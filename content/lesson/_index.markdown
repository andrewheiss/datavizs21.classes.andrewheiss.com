---
title: Interactive lessons
menu:
  lesson:
    parent: Overview
    weight: 1
type: docs
weight: 1
shiny: true
---

Each class session has an interactive lesson that you will work through ***after*** doing the readings and watching the lecture. These lessons are a central part of the class—they will teach you how to use **ggplot2** and other packages in the **tidyverse** to create beautiful and truthful visualizations with R.

Interactive code sections look like this. Make changes in the text box and click on the green “Run Code” button to see the results. Sometimes there will be a button with a hint or solution.

<div class="puzzle">

**Your turn**: Modify the code here to show the relationship between health and wealth for 2002 instead of 2007.

</div>

{{% learnr url="https://andrewheiss.shinyapps.io/datavizm20_00-lesson-example/" id="learnr-00-lesson-example1" %}}

If you’re curious how this works, each interactive code section is a miniature [Shiny](https://shiny.rstudio.com/) app hosted at [shinyapps.io](https://www.shinyapps.io/). Each app uses [**learnr**](https://rstudio.github.io/learnr/) to provide interactivity, and these **learnr** apps are embedded in this website with some [HTML and Javascript wizardry](https://desiree.rbind.io/post/2020/learnr-iframes/).
