---
title: "Text"
linktitle: "13: Text"
date: "2021-07-19"
start_date: "2021-07-19"
end_date: "2021-07-23"
toc: yes
menu:
  example:
    parent: Examples
    weight: 13
type: docs
editor_options: 
  chunk_output_type: console
---

For this example, we're going to use the text of *Little Women* by Louisa May Alcott and four Shakespearean tragedies (*Romeo and Juliet*, *King Lear*, *Macbeth*, and *Hamlet*) to explore how to do some basic text visualization.

You can follow along if you want, but **don't feel like you have too**. This is mostly just to give you a taste of different methods for visualizing text. It's by no means comprehensive, but it is well annotated and commented and should (hopefully) be easy to follow.

If you want to play with part-of-speech tagging, you can download an already-tagged version of *Little Women* here (you'll likely need to right click and choose "Save Link As…"):

- [<i class="fas fa-file-csv"></i> `little_women_tagged.csv`](/data/little_women_tagged.csv)

If you want to see other examples of text visualizations with the **tidytext** package, check out some of these:

- <i class="fas fa-external-link-square-alt"></i> [Harry Potter Sentiment Analysis for Beginners](https://rstudio-pubs-static.s3.amazonaws.com/300624_8260952d1f0346969e65f41a97006bf5.html) (this uses [the **harrypotter** package](https://github.com/bradleyboehmke/harrypotter), which you can install from GitHub (not from CRAN))
- <i class="fas fa-external-link-square-alt"></i> Peer Christensen ["Fair is foul, and foul is fair: a tidytext sentiment analysis of Shakespeare’s tragedies"](https://peerchristensen.netlify.app/post/fair-is-foul-and-foul-is-fair-a-tidytext-entiment-analysis-of-shakespeare-s-tragedies/)
- <i class="fas fa-external-link-square-alt"></i> ["Tidy text, parts of speech, and unique words in the Bible"](https://www.andrewheiss.com/blog/2018/12/26/tidytext-pos-john/)
- <i class="fas fa-external-link-square-alt"></i> ["Tidy text, parts of speech, and unique words in the Qur'an"](https://www.andrewheiss.com/blog/2018/12/28/tidytext-pos-arabic/)

## Live coding example

<div class="embed-responsive embed-responsive-16by9">
<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/YeyZp8Dw55g" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>


## Complete code

*(This is a highly cleaned up version of the code from the video.)*



### Get data

First, as always, we'll load the libraries we'll be using:


```r
library(tidyverse)   # For ggplot, dplyr, etc.
library(tidytext)    # For neat text things
library(gutenbergr)  # For downloading books from Project Gutenberg
```

We're going to use the **gutenbergr** package to download some books directly from Project Gutenberg. The IDs for these books come from the URLs at their website. For instance, [*Little Women* is book #514](https://www.gutenberg.org/ebooks/514). We'll store these books as `*_raw* and then clean them up later.


```r
# 514 Little Women
little_women_raw <- gutenberg_download(514, meta_fields = "title")

# 1524 - Hamlet
# 1532 - King Lear
# 1533 - Macbeth
# 1513 - Romeo and Juliet
tragedies_raw <- gutenberg_download(c(1524, 1532, 1533, 1513),
                                    meta_fields = "title")
```





If you won't want to redownload the books every time you knit (you don't), you can do the same trick we've used for [WDI](/example/08-example/) and [FRED data](/example/11-example/). Put the actual code for getting the books in a chunk with `eval=FALSE` on it and run it manually in RStudio when you want to get the data. Then you can write the downloaded data as a CSV file, and then load it invisibly from the CSV file when you knit:

````text
I first download data from Project Gutenberg:

```{r get-book, eval=FALSE}
books_raw <- gutenberg_download(...)

write_csv(books_raw, "data/books_raw.csv")
```

```{r load-book-data-real, include=FALSE}
books_raw <- read_csv("data/books_raw.csv")
```
````

### Clean data

The data you get from Project Gutenberg comes in a tidy format, with a column for the book id, a column for the title, and a column for text. Sometimes this text column will be divided by lines in the book; sometimes it might be an entire page or paragraph or chapter. It all depends on how the book is formatted at Project Gutenberg.

Here's what the start of our `little_women_raw` data looks like:


```r
head(little_women_raw)
```

```
## # A tibble: 6 x 3
##   gutenberg_id text              title       
##          <dbl> <chr>             <chr>       
## 1          514 LITTLE WOMEN      Little Women
## 2          514 <NA>              Little Women
## 3          514 <NA>              Little Women
## 4          514 by                Little Women
## 5          514 <NA>              Little Women
## 6          514 Louisa May Alcott Little Women
```

If we look at the data in RStudio, we can see that the actual book doesn't start until row 70 (the first 69 rows are the table of contents and other parts of the front matter).

It would be nice if we had a column that indicated what chapter each line is in, since we could then group by chapter and look at patterns within chapters. Since the data doesn't come with a chapter column, we have to make one ourselves using a fun little trick. Each chapter in the book starts with "CHAPTER ONE" or "CHAPTER TWO", with "chapter" in ALL CAPS. We can make a variable named `chapter_start` that will be true if a line starts with "CHAPTER" and false if not. Then we can use the `cumsum()` function to take the cumulative sum of this column, which will increment up one number ever time there's a new chapter, thus creating a helpful chapter column.


```r
# Clean up Little Women
little_women <- little_women_raw %>% 
  # The actual book doesn't start until line 70
  slice(70:n()) %>% 
  # Get rid of rows where text is missing
  drop_na(text) %>% 
  # Chapters start with CHAPTER X, so mark if each row is a chapter start
  # cumsum() calculates the cumulative sum, so it'll increase every time there's
  # a new chapter and automatically make chapter numbers
  mutate(chapter_start = str_detect(text, "^CHAPTER"),
         chapter_number = cumsum(chapter_start)) %>% 
  # Get rid of these columns
  select(-gutenberg_id, -title, -chapter_start)

head(little_women)
```

```
## # A tibble: 6 x 2
##   text                                                                        chapter_number
##   <chr>                                                                                <int>
## 1 "CHAPTER ONE"                                                                            1
## 2 "PLAYING PILGRIMS"                                                                       1
## 3 "\"Christmas won't be Christmas without any presents,\" grumbled Jo, lying"              1
## 4 "on the rug."                                                                            1
## 5 "\"It's so dreadful to be poor!\" sighed Meg, looking down at her old"                   1
## 6 "dress."                                                                                 1
```

The data from Shakespeare is similarly messy, with just three columns:


```r
head(tragedies_raw)
```

```
## # A tibble: 6 x 3
##   gutenberg_id text                   title           
##          <dbl> <chr>                  <chr>           
## 1         1513 ROMEO AND JULIET       Romeo and Juliet
## 2         1513 <NA>                   Romeo and Juliet
## 3         1513 by William Shakespeare Romeo and Juliet
## 4         1513 <NA>                   Romeo and Juliet
## 5         1513 <NA>                   Romeo and Juliet
## 6         1513 <NA>                   Romeo and Juliet
```

The initial text sometimes isn't the actual text of the book. If you look at the beginning of *Hamlet*, for instance, there's a bunch of introductory stuff from editors and transcribers. In real life, we'd want to find a systematic way to get rid of that (perhaps by looking at how many introductory rows there are in each of the four plays and removing those rows), but for now, we'll just live with it and pretend Shakespeare wrote these notes. 🤷

We could also figure out a systematic way to indicate acts and scenes, but that's tricky, so we won't for this example. ([This guy did though!](https://peerchristensen.netlify.app/post/fair-is-foul-and-foul-is-fair-a-tidytext-entiment-analysis-of-shakespeare-s-tragedies/))

Now that we have tidy text data, let's do stuff with it!


### Tokens and word counts

#### Single words

One way we can visualize text is to look at word frequencies and find the most common words. This is even more important when looking across documents. 

Right now the text we have is tidy, but it is based on lines of text, not words. In order to count words correctly, we need each token (or text element, whether it be a word or bigram or paragraph or whatever) to be in its own row. The `unnest_tokens()` functions from **tidytext** does this for us. The first argument is the name of the column we want to create; the second argument is the name of the column we want to split into tokens.

Let's just work with the Shakespeare tragedies:


```r
tragedies_words <- tragedies_raw %>% 
  drop_na(text) %>% 
  unnest_tokens(word, text)

head(tragedies_words)
```

```
## # A tibble: 6 x 3
##   gutenberg_id title            word       
##          <dbl> <chr>            <chr>      
## 1         1513 Romeo and Juliet romeo      
## 2         1513 Romeo and Juliet and        
## 3         1513 Romeo and Juliet juliet     
## 4         1513 Romeo and Juliet by         
## 5         1513 Romeo and Juliet william    
## 6         1513 Romeo and Juliet shakespeare
```

Now that we have words, we can filter and count the words. Here's what's happening in this next chunk:

- We use `anti_join()` to remove all common stop words like "a" and "the" that are listed in the `stop_words` dataset that is loaded when you load **tidytext**
- We count how many times each word appears in each title/play
- We only keep the top 15 words


```r
top_words_tragedies <- tragedies_words %>% 
  # Remove stop words
  anti_join(stop_words) %>% 
  # Get rid of old timey words and stage directions
  filter(!(word %in% c("thou", "thy", "haue", "thee", 
                      "thine", "enter", "exeunt", "exit"))) %>% 
  # Count all the words in each play
  count(title, word, sort = TRUE) %>% 
  # Keep top 15 in each play
  group_by(title) %>% 
  top_n(15) %>% 
  ungroup() %>% 
  # Make the words an ordered factor so they plot in order
  mutate(word = fct_inorder(word))
top_words_tragedies
```

```
## # A tibble: 63 x 3
##    title                     word        n
##    <chr>                     <fct>   <int>
##  1 Hamlet, Prince of Denmark ham       358
##  2 Romeo and Juliet          romeo     296
##  3 Macbeth                   macbeth   282
##  4 The Tragedy of King Lear  lear      230
##  5 Hamlet, Prince of Denmark lord      223
##  6 Hamlet, Prince of Denmark king      197
##  7 Romeo and Juliet          juliet    178
##  8 The Tragedy of King Lear  kent      174
##  9 Romeo and Juliet          nurse     149
## 10 Romeo and Juliet          capulet   145
## # … with 53 more rows
```

Now we can plot these results, facetting and filling by title:


```r
ggplot(top_words_tragedies, aes(y = fct_rev(word), x = n, fill = title)) + 
  geom_col() + 
  guides(fill = "none") +
  labs(y = "Count", x = NULL, 
       title = "15 most frequent words in four Shakespearean tragedies") +
  facet_wrap(vars(title), scales = "free_y") +
  theme_bw()
```

<img src="13-example_files/figure-html/plot-top-words-tragedies-1.png" width="672" style="display: block; margin: auto;" />

These results aren't terribly surprising. "lear" is the most common word in *King Lear*, "macbeth" is the most common word in *Macbeth*, and so on. But the results are still really neat! This is a wordcloud for grownups!

(Sharp-eyed readers will notice that the words aren't actually in perfect order! That's because some common words are repeated across the plays, like "lord" and "sir". However, each category in a factor can only have one possible position in the orer, so because "lord" is the second most common word in *Hamlet* it also appears as #2 in *Macbeth* and *King Lear*. You can fix this with the `reorder_within()` function in **tidytext**—see [Julia Silge's tutorial here](https://juliasilge.com/blog/reorder-within/) for how to use it.)

#### Bigrams

We can also look at pairs of words instead of single words. To do this, we need to change a couple arguments in `unnest_tokens()`, but otherwise everything else stays the same. In order to remove stopwords, we need to split the bigram column into two columns (`word1` and `word2`) with `separate()`, filter each of those columns, and then combine the word columns back together as `bigram` with `unite()`


```r
tragedies_bigrams <- tragedies_raw %>% 
  drop_na(text) %>% 
  # n = 2 here means bigrams. We could also make trigrams (n = 3) or any type of n-gram
  unnest_tokens(bigram, text, token = "ngrams", n = 2) %>% 
  # Split the bigrams into two words so we can remove stopwords
  separate(bigram, c("word1", "word2"), sep = " ") %>% 
  filter(!word1 %in% stop_words$word,
         !word2 %in% stop_words$word) %>% 
  filter(!word1 %in% c("thou", "thy", "thine", "enter", "exeunt", "exit"),
         !word2 %in% c("thou", "thy", "thine", "enter", "exeunt", "exit")) %>% 
  # Put the two word columns back together
  unite(bigram, word1, word2, sep = " ")
tragedies_bigrams
```

```
## # A tibble: 13,283 x 3
##    gutenberg_id title            bigram             
##           <dbl> <chr>            <chr>              
##  1         1513 Romeo and Juliet william shakespeare
##  2         1513 Romeo and Juliet persons represented
##  3         1513 Romeo and Juliet escalus prince     
##  4         1513 Romeo and Juliet nobleman kinsman   
##  5         1513 Romeo and Juliet montague heads     
##  6         1513 Romeo and Juliet NA NA              
##  7         1513 Romeo and Juliet romeo son          
##  8         1513 Romeo and Juliet mercutio kinsman   
##  9         1513 Romeo and Juliet benvolio nephew    
## 10         1513 Romeo and Juliet tybalt nephew      
## # … with 13,273 more rows
```

```r
top_bigrams <- tragedies_bigrams %>% 
  # Count all the bigrams in each play
  count(title, bigram, sort = TRUE) %>% 
  # Keep top 15 in each play
  group_by(title) %>% 
  top_n(15) %>% 
  ungroup() %>% 
  # Make the bigrams an ordered factor so they plot in order
  mutate(bigram = fct_inorder(bigram))
```

```
## Selecting by n
```

```r
ggplot(top_bigrams, aes(y = fct_rev(bigram), x = n, fill = title)) + 
  geom_col() + 
  guides(fill = "none") +
  labs(y = "Count", x = NULL, 
       title = "15 most frequent bigrams in four Shakespearean tragedies") +
  facet_wrap(vars(title), scales = "free") +
  theme_bw()
```

<img src="13-example_files/figure-html/top-bigrams-1.png" width="672" style="display: block; margin: auto;" />

There are some neat trends here. "Lord Hamlet" is the most common pair of words in *Hamlet* (not surprisingly), but in Macbeth the repeated "knock knock" (the first non-name repeated pair) is a well-known plot point and reoccurring symbolic theme throughout the play.

### Bigrams and probability

We can replicate the ["She Giggles, He Gallops"](https://pudding.cool/2017/08/screen-direction/) idea by counting the bigrams that match "he X" and "she X". 

The log ratio idea shows how much more likely a word is compared to its counterpart (so "he that" is about 5 more likely to appear than "she that". In this graph, I replaced the x-axis labels with "2x" and "4x", but without those, you get numbers like 1, 2, and 3 (or -1, -2, -3)). To convert those logged ratio numbers into the multiplicative version (i.e. 2x instead of 1), raise 2 to the power of the log ratio. If the log ratio is 3, the human-readable version is $2^3$, or 8 times.


```r
# Take the log of 8:
log2(8)
```

```
## [1] 3
```

```r
# Reverse log of 3:
2^3
```

```
## [1] 8
```

The only text wizardry here is tokenizing the words. Pretty much the rest of all this code is just **dplyr** mutating, filtering, and counting:


```r
pronouns <- c("he", "she")

bigram_he_she_counts <- tragedies_raw %>%
  drop_na(text) %>% 
  # Split into bigrams
  unnest_tokens(bigram, text, token = "ngrams", n = 2) %>%
  # Find counts of bigrams
  count(bigram, sort = TRUE) %>%
  # Split the bigram column into two columns
  separate(bigram, c("word1", "word2"), sep = " ") %>%
  # Only choose rows where the first word is he or she
  filter(word1 %in% pronouns) %>%
  count(word1, word2, wt = n, sort = TRUE) %>% 
  rename(total = n)

word_ratios <- bigram_he_she_counts %>%
  # Look at each of the second words
  group_by(word2) %>%
  # Only choose rows where the second word appears more than 10 times
  filter(sum(total) > 10) %>%
  ungroup() %>%
  # Spread out the word1 column so that there's a column named "he" and one named "she"
  spread(word1, total, fill = 0) %>%
  # Add 1 to each number so that logs work (just in case any are zero)
  mutate_if(is.numeric, ~(. + 1) / sum(. + 1)) %>%
  # Create a new column that is the logged ratio of the she counts to he counts
  mutate(logratio = log2(she / he)) %>%
  # Sort by that ratio
  arrange(desc(logratio))

# Rearrange this data so it's plottable
plot_word_ratios <- word_ratios %>%
  # This gets the words in the right order---we take the absolute value, select
  # only rows where the log ratio is bigger than 0, and then take the top 15 words
  mutate(abslogratio = abs(logratio)) %>%
  group_by(logratio < 0) %>%
  top_n(15, abslogratio) %>%
  ungroup() %>%
  mutate(word = reorder(word2, logratio)) 

# Finally we plot this
ggplot(plot_word_ratios, aes(y = word, x = logratio, color = logratio < 0)) +
  geom_segment(aes(y = word, yend = word,
                   x = 0, xend = logratio), 
               size = 1.1, alpha = 0.6) +
  geom_point(size = 3.5) +
  labs(x = "How much more/less likely", y = NULL) +
  scale_color_discrete(name = "", labels = c("More 'she'", "More 'he'")) +
  scale_x_continuous(breaks = seq(-3, 3),
                     labels = c("8x", "4x", "2x",
                                "Same", "2x", "4x", "8x")) +
  theme_bw() +
  theme(legend.position = "bottom")
```

<img src="13-example_files/figure-html/bigrams-he-she-1.png" width="672" style="display: block; margin: auto;" />

Shakespeare doesn't use a lot of fancy verbs in his plays, so we're left with incredibly common verbs like "should" and "comes" and "was". Oh well.


### Term frequency-inverse document frequency (tf-idf)

We can determine which words are the most unique for each book/document in our corpus using by calculating the tf-idf (term frequency-inverse document frequency) score for each term. The tf-idf is the product of the term frequency and the inverse document frequency:

$$
\begin{aligned}
tf(\text{term}) &= \frac{n_{\text{term}}}{n_{\text{terms in document}}} \\
idf(\text{term}) &= \ln{\left(\frac{n_{\text{documents}}}{n_{\text{documents containing term}}}\right)} \\
tf\text{-}idf(\text{term}) &= tf(\text{term}) \times idf(\text{term})
\end{aligned}
$$

Fortunately you don't need to remember that formula. The `bind_tf_idf()` function will calculate this for you. Remember, the higher the tf-idf number, the more unique the term is in the document, but these numbers are meaningless and unitless—you can't convert them to a percentage or anything.

Here are the most unique words in these four tragedies, compared to all the tragedies:


```r
tragedy_words <- tragedies_raw %>% 
  drop_na() %>% 
  # Split into word tokens
  unnest_tokens(word, text) %>% 
  # Remove stop words and old timey words
  anti_join(stop_words) %>% 
  filter(!word %in% c("thou", "thy", "haue", "thee", 
                      "thine", "enter", "exeunt", "exit")) %>% 
  count(title, word, sort = TRUE)

# Add the tf-idf values to the counts
tragedy_tf_idf <- tragedy_words %>% 
  bind_tf_idf(word, title, n)

# Get the top 10 uniquest words
tragedy_tf_idf_plot <- tragedy_tf_idf %>% 
  arrange(desc(tf_idf)) %>% 
  group_by(title) %>% 
  top_n(10) %>% 
  ungroup() %>% 
  mutate(word = fct_inorder(word))

ggplot(tragedy_tf_idf_plot, 
       aes(y = fct_rev(word), x = tf_idf, fill = title)) +
  geom_col() +
  guides(fill = "none") +
  labs(x = "tf-idf", y = NULL) +
  facet_wrap(~ title, scales = "free") +
  theme_bw()
```

<img src="13-example_files/figure-html/tf-idf-tragedies-1.png" width="672" style="display: block; margin: auto;" />

Not surprisingly, the most unique words for each play happen to be the names of the characters in those plays.


### Sentiment analysis

In the video, I plotted the sentiment of *Little Women* across the book, but it wasn't a very interesting plot. We'll try with Shakespeare here instead. 

At its core, sentiment analysis involves looking at a big list of words for how negative or positive they are. Some sentiment dictionaries mark if a word is "negative" or "positive"; some give words a score from -3 to 3; some give different emotions like "sadness" or "anger". You can see what the different dictionaries look like with `get_sentiments()`























