---
title: "Comparisons"
linktitle: "8: Comparisons"
date: "2021-06-28"
start_date: "2021-06-28"
end_date: "2021-07-02"
menu:
  content:
    parent: Course content
    weight: 8
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "08-slides"
---

## Readings

-   <i class="fas fa-book"></i> [Chapter 9](https://clauswilke.com/dataviz/boxplots-violins.html) in Claus Wilke, *Fundamentals of Data Visualization*[^1]
-   <i class="fas fa-external-link-square-alt"></i> Mike Bostock, [“Methods of Comparison, Compared”](https://observablehq.com/@mbostock/methods-of-comparison-compared). Explanation of the differences between showing relative differences, absolute differences, and log ratios.
-   <i class="fas fa-external-link-square-alt"></i> [Sparkline theory and practice](https://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0001OR). This is a collection of posts by Edward Tufte about sparklines—scroll down a ways and check out his examples, analysis, and critiques.
-   <i class="fas fa-external-link-square-alt"></i> [Time series sparklines](https://flowingdata.com/2017/01/24/one-dataset-visualized-25-ways/02-time-series-sparklines-2/)
-   <i class="fas fa-external-link-square-alt"></i> [Comparisons with lollipop charts](https://uc-r.github.io/lollipop). If you’re feeling adventurous (and you should!), do this tutorial as you read it.

### Reproducible examples

Reprexes (or reproducible examples) are the best way to (1) get help online and (2) fix issues on your own.

Making a good reprex is tricky, but it’s a very valuable skill to know (regardless of programming language!). Here are some helpful resources for making them:

-   <i class="fas fa-external-link-square-alt"></i> [What’s a reproducible example (`reprex`) and how do I do one?](https://community.rstudio.com/t/faq-whats-a-reproducible-example-reprex-and-how-do-i-do-one/5219)
-   <i class="fas fa-external-link-square-alt"></i> [So you’ve been asked to make a reprex](https://www.jessemaegan.com/post/so-you-ve-been-asked-to-make-a-reprex/)
-   <i class="fab fa-r-project"></i> [The reprex package](https://reprex.tidyverse.org/index.html)

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   These readings all show a ton of new ways to present comparisons. Which ones are your favorite? Which ones didn’t quite click with you? In what situations are some more appropriate than others?

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="visualizing-comparisons-tab" data-toggle="tab" href="#visualizing-comparisons" role="tab" aria-controls="visualizing-comparisons" aria-selected="false">Visualizing comparisons</a>
</li>
<li class="nav-item">
<a class="nav-link" id="reproducible-examples-tab" data-toggle="tab" href="#reproducible-examples" role="tab" aria-controls="reproducible-examples" aria-selected="false">Reproducible examples</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#1">
</iframe>

</div>

</div>

<div id="visualizing-comparisons" class="tab-pane fade" role="tabpanel" aria-labelledby="visualizing-comparisons-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#comparisons">
</iframe>

</div>

</div>

<div id="reproducible-examples" class="tab-pane fade" role="tabpanel" aria-labelledby="reproducible-examples-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#reprex">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sGAoxtYY1GgHm2ZRQmWeTiP).

-   [Introduction](https://www.youtube.com/watch?v=pwvPAnjEHKk&list=PLS6tnpTr39sGAoxtYY1GgHm2ZRQmWeTiP)
-   [Visualizing comparisons](https://www.youtube.com/watch?v=iJOPwPYxZZE&list=PLS6tnpTr39sGAoxtYY1GgHm2ZRQmWeTiP)
-   [Reproducible examples](https://www.youtube.com/watch?v=Gv1U8IPxiOY&list=PLS6tnpTr39sGAoxtYY1GgHm2ZRQmWeTiP)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sGAoxtYY1GgHm2ZRQmWeTiP" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Claus E. Wilke, *Fundamentals of Data Visualization* (Sebastopol, California: O’Reilly Media, 2018), <https://clauswilke.com/dataviz/>.
