---
title: "Themes"
linktitle: "5: Themes"
date: "2021-06-28"
due_date: "2021-06-28"
due_time: "11:59 PM"
toc: true
menu:
  assignment:
    parent: Exercises
    weight: 5
type: docs
editor_options: 
  chunk_output_type: console
---

## Getting started

For this assignment, you're going to work with data compiled by [data journalist Duncan Greere](https://www.duncangeere.com/) related to 48 Soviet dogs who flew as test subjects in USSR's space program in the 1950s and 60s. [The original data can be found here](https://airtable.com/universe/expG3z2CFykG1dZsp/sovet-space-dogs).

You'll need to download one CSV file and put them somewhere on your computer or upload them to RStudio.cloud—preferably in a folder named `data` in your project folder:

- [<i class="fas fa-file-csv"></i> `Dogs-Database.csv`](/projects/05-exercise/data/Dogs-Database.csv)

To help you, I've created a skeleton R Markdown file with a template for this exercise, along with some code to clean up the data a little. Download that here and include it in your project:

- [<i class="fab fa-r-project"></i> `05-exercise.Rmd`](/projects/05-exercise/05-exercise.Rmd)

In the end, the structure of your project directory should look something like this:

```text
your-project-name\
  05-exercise.Rmd
  your-project-name.Rproj
  data\
    Dogs-Database.csv
```

To check that you put everything in the right places, you can download and unzip this file, which contains everything in the correct structure:

- [<i class="fas fa-file-archive"></i> `05-exercise.zip`](/projects/05-exercise.zip)


## Task 1: Reflection

Write your reflection for the day's readings.


## Task 2: The ugliest plot in the world

For this assignment, you're going to forget all the wonderful CRAP design principles you just learned and try your hardest to make the ugliest plot in the world. Modify the color scale and change theme elements to make this plot truly hideous.


## Turning everything in

When you're all done, click on the "Knit" button at the top of the editing window and create an HTML or Word version (or PDF if you've [installed **tinytex**](/resource/install/#install-tinytex) and you [followed the instructions here for how to make Cairo fonts work with knitted PDFs](https://www.andrewheiss.com/blog/2017/09/27/working-with-r-cairo-graphics-custom-fonts-and-ggplot/)) of your document. 

<img src="/img/assignments/knit-button.png" width="30%" />

Include a chunk that uses `ggsave()` to save the plot to your computer as a PNG file. 

Upload the knitted document and the saved PNG file of your plot to iCollege.
