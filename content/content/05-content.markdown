---
title: "Themes"
linktitle: "5: Themes"
date: "2021-06-21"
start_date: "2021-06-21"
end_date: "2021-06-25"
menu:
  content:
    parent: Course content
    weight: 5
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "05-slides"
---

## Readings

-   <i class="fas fa-book"></i> [Chapter 22](https://clauswilke.com/dataviz/figure-titles-captions.html) in Claus Wilke, *Fundamentals of Data Visualization*[^1]
-   <i class="fas fa-external-link-square-alt"></i> [Naomi Robbins, “Are Grid Lines Useful or Chartjunk?”](https://www.forbes.com/sites/naomirobbins/2012/02/22/are-grid-lines-useful-or-chartjunk/#3b49a4044283)
-   <i class="fas fa-external-link-square-alt"></i> [Stephen Few, “Grid Lines in Graphs are Rarely Useful”](http://www.perceptualedge.com/articles/dmreview/grid_lines.pdf)
-   <i class="fas fa-external-link-square-alt"></i> [Henry Wang, “ggplot2 Theme Elements Demonstration”](https://henrywang.nl/ggplot2-theme-elements-demonstration/)
-   <i class="fas fa-external-link-square-alt"></i> Glance through the documentation for ggplot’s [complete themes](https://ggplot2.tidyverse.org/reference/ggtheme.html) and [`theme()`](https://ggplot2.tidyverse.org/reference/theme.html), especially the examples near the bottom

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   How do the principles of CRAP apply to graph design and other theme elements?
-   Should plots use gridlines? Naomi Robbins says yes; Stephen Few says no—what do you say?

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="crap-and-ggplot-tab" data-toggle="tab" href="#crap-and-ggplot" role="tab" aria-controls="crap-and-ggplot" aria-selected="false">CRAP and ggplot</a>
</li>
<li class="nav-item">
<a class="nav-link" id="the-anatomy-of-a-ggplot-theme-tab" data-toggle="tab" href="#the-anatomy-of-a-ggplot-theme" role="tab" aria-controls="the-anatomy-of-a-ggplot-theme" aria-selected="false">The anatomy of a ggplot theme</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#1">
</iframe>

</div>

</div>

<div id="crap-and-ggplot" class="tab-pane fade" role="tabpanel" aria-labelledby="crap-and-ggplot-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#crap-ggplot">
</iframe>

</div>

</div>

<div id="the-anatomy-of-a-ggplot-theme" class="tab-pane fade" role="tabpanel" aria-labelledby="the-anatomy-of-a-ggplot-theme-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#anatomy">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sEsSJ16BKgXPNFcl3y6gjEv).

-   [Introduction](https://www.youtube.com/watch?v=s9YBf8Rf21s&list=PLS6tnpTr39sEsSJ16BKgXPNFcl3y6gjEv)
-   [CRAP and ggplot](https://www.youtube.com/watch?v=BQ3wRMAMeBQ&list=PLS6tnpTr39sEsSJ16BKgXPNFcl3y6gjEv)
-   [The anatomy of a ggplot theme](https://www.youtube.com/watch?v=V0CzheP9yMc&list=PLS6tnpTr39sEsSJ16BKgXPNFcl3y6gjEv)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sEsSJ16BKgXPNFcl3y6gjEv" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Claus E. Wilke, *Fundamentals of Data Visualization* (Sebastopol, California: O’Reilly Media, 2018), <https://clauswilke.com/dataviz/>.
