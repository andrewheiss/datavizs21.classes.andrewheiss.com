---
title: "Introduction to R and the tidyverse"
linktitle: "1: Introduction to R and the tidyverse"
date: "2021-06-14"
due_date: "2021-06-14"
due_time: "11:59 PM"
toc: true
menu:
  assignment:
    parent: Exercises
    weight: 1
type: docs
editor_options: 
  chunk_output_type: console
---



## Task 1: Make an RStudio Project

1. Use either RStudio.cloud or RStudio on your computer (preferably RStudio on your computer! [Follow these instructions to get started!](/resource/install/)) to create a new RStudio Project.

2. Create a folder named "data" in the project folder you just made.

3. Download this CSV file and place it in that folder:

    - [<i class="fas fa-file-csv"></i> `cars.csv`](/data/cars.csv)

4. In RStudio, go to "File" > "New File…" > "R Markdown…" and click "OK" in the dialog without changing anything.

5. Delete all the placeholder text in that new file and replace it with this:

    ````text
    ---
    title: "Exercise 1"
    author: "Put your name here"
    output: html_document
    ---
    
    # Reflection
    
    Replace this text with your reflection
    
    
    # My first plot
    
    ```{r load-libraries-data, warning=FALSE, message=FALSE}
    library(tidyverse)
    
    cars <- read_csv("data/cars.csv")
    ```
    
    Replace this line with a code chunk and use it to create a plot.
    
    ````

6. Save the R Markdown file with some sort of name (**without any spaces!**)

7. Your project folder should look something like this:

    <img src="/img/assignments/project-structure.png" width="30%" />


## Task 2: Make an R Markdown file with a plot in it

1. Add your reading reflection to the appropriate place in the R Markdown file. You can type directly in RStudio if you want (though there's no spell checker), or you can type it in Word or Google Docs and then paste it into RStudio.

2. Remove the text that says "Replace this line with a code chunk" and insert a new R code chunk. Either type <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>i</kbd> on Windows, or <kbd>⌘</kbd> + <kbd>⌥</kbd> + <kbd>i</kbd> on macOS, or use the "Insert Chunk" menu:

    <img src="/img/assignments/insert-chunk-button.png" width="19%" />

3. Use `ggplot()` to create a scatterplot using the `mpg` dataset. Use whatever variables you want. Type the code to create the plot in the new empty chunk.

4. Knit your document as a Word file (or PDF if you're brave and [installed LaTeX](/resource/install/#install-tinytex)). Use the "Knit" menu:

    <img src="/img/assignments/knit-button.png" width="30%" />

5. Upload the knitted document to iCollege.

6. 🎉 Party! 🎉

---

You'll be doing this same process for all your future exercises. Each exercise will involve an R Markdown file. You can either create a new RStudio Project directory for all your work:

<img src="/img/reference/rproj-one-folder.png" width="30%" />

Or you can create individual projects for each assignment and mini-project:

<img src="/img/reference/rproj-multiple-folders.png" width="30%" />
