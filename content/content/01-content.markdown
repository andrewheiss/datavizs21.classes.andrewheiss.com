---
title: "Truth, beauty, and data + R and tidyverse"
linktitle: "1: Truth, beauty, and data + the tidyverse"
date: "2021-06-07"
start_date: "2021-06-07"
end_date: "2021-06-11"
menu:
  content:
    parent: Course content
    weight: 1
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "01-slides"
---

## Readings

-   The [syllabus](/syllabus/), [content](/content/), [lessons](/lesson/), [examples](/example/), and [assignments](/assigment/) pages for this class
-   <i class="fas fa-podcast"></i> Tim Harford, [“Florence Nightingale: Data Viz Pioneer,”](https://99percentinvisible.org/episode/florence-nightingale-data-viz-pioneer/) *99% Invisible*, episode 433, March 2, 2021 (*this is a podcast; listen to it in your browser or use an app like [Overcast](https://overcast.fm/) or [Spotify](https://spotify.com/)*)
-   <i class="fas fa-book"></i> [Chapter 1](http://socviz.co/lookatdata.html) in Kieran Healy, *Data Visualization*[^1]
-   <i class="fas fa-book"></i> Chapters 2 and 3 in Alberto Cairo, *The Truthful Art*[^2] (*skim the introduction and chapter 1*)
-   <i class="fas fa-external-link-square-alt"></i> [Study: Charts change hearts and minds better than words do](https://www.washingtonpost.com/news/wonk/wp/2018/06/15/study-charts-change-hearts-and-minds-better-than-words-do/?utm_term=.4474599c0d5e)

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   How do we know what is true?
-   Are facts truth?
-   Why do we visualize data?
-   What makes a great visualization?
-   How do you choose which kind of visualization to use?

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="facts-truth-and-beauty-tab" data-toggle="tab" href="#facts-truth-and-beauty" role="tab" aria-controls="facts-truth-and-beauty" aria-selected="false">Facts, truth, and beauty</a>
</li>
<li class="nav-item">
<a class="nav-link" id="data-truth-and-beauty-tab" data-toggle="tab" href="#data-truth-and-beauty" role="tab" aria-controls="data-truth-and-beauty" aria-selected="false">Data, truth, and beauty</a>
</li>
<li class="nav-item">
<a class="nav-link" id="beautiful-visualizations-tab" data-toggle="tab" href="#beautiful-visualizations" role="tab" aria-controls="beautiful-visualizations" aria-selected="false">Beautiful visualizations</a>
</li>
<li class="nav-item">
<a class="nav-link" id="class-details-tab" data-toggle="tab" href="#class-details" role="tab" aria-controls="class-details" aria-selected="false">Class details</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/01-slides.html#1">
</iframe>

</div>

</div>

<div id="facts-truth-and-beauty" class="tab-pane fade" role="tabpanel" aria-labelledby="facts-truth-and-beauty-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/01-slides.html#facts-truth-beauty">
</iframe>

</div>

</div>

<div id="data-truth-and-beauty" class="tab-pane fade" role="tabpanel" aria-labelledby="data-truth-and-beauty-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/01-slides.html#data-truth-beauty">
</iframe>

</div>

</div>

<div id="beautiful-visualizations" class="tab-pane fade" role="tabpanel" aria-labelledby="beautiful-visualizations-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/01-slides.html#beautiful-visualizations">
</iframe>

</div>

</div>

<div id="class-details" class="tab-pane fade" role="tabpanel" aria-labelledby="class-details-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/01-slides.html#class-details">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sHom5NPjrZAeMTYS5orTl9c).

-   [Introduction](https://www.youtube.com/watch?v=tVcomh6jQ2Y&list=PLS6tnpTr39sHom5NPjrZAeMTYS5orTl9c)
-   [Facts, truth, and beauty](https://www.youtube.com/watch?v=UbQ8IW3UI9E&list=PLS6tnpTr39sHom5NPjrZAeMTYS5orTl9c)
-   [Data, truth, and beauty](https://www.youtube.com/watch?v=DldFVc08YY4&list=PLS6tnpTr39sHom5NPjrZAeMTYS5orTl9c)
-   [Beautiful visualizations](https://www.youtube.com/watch?v=6MTC9uGMNFg&list=PLS6tnpTr39sHom5NPjrZAeMTYS5orTl9c)
-   [Class details](https://www.youtube.com/watch?v=_TclSs8iLMY&list=PLS6tnpTr39sHom5NPjrZAeMTYS5orTl9c)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sHom5NPjrZAeMTYS5orTl9c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Kieran Healy, *Data Visualization: A Practical Introduction* (Princeton: Princeton University Press, 2018), <http://socviz.co/>.

[^2]: Alberto Cairo, *The Truthful Art: Data, Charts, and Maps for Communication* (Berkeley, California: New Riders, 2016).
