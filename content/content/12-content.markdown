---
title: "Space"
linktitle: "12: Space"
date: "2021-07-12"
start_date: "2021-07-12"
end_date: "2021-07-16"
menu:
  content:
    parent: Course content
    weight: 12
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "12-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapter 10 in Alberto Cairo, *The Truthful Art*[^1]
-   <i class="fas fa-book"></i> [Chapter 7](http://socviz.co/maps.html) in Kieran Healy, *Data Visualization*[^2]

It looks like this is a lot of reading, but lots of these are short videos or tweets or interactive websites, so don’t worry!

-   <i class="fab fa-youtube"></i> [Why all world maps are wrong](https://www.youtube.com/watch?v=kIID5FDi2JQ)
-   <i class="fas fa-external-link-square-alt"></i> [The True Size Of…](https://thetruesize.com)
-   <i class="fas fa-external-link-square-alt"></i> [Projection comparison](https://observablehq.com/@d3/projection-comparison)
-   <i class="fas fa-external-link-square-alt"></i> [Map projections](https://xkcd.com/977/) (try comparing Robinson with Mercator to see how badly Mercator exaggerates the northern hemisphere)
-   <i class="fab fa-youtube"></i> [Gall-Peters Projection](https://www.youtube.com/watch?v=vVX-PrBRtTY)
-   <i class="fas fa-external-link-square-alt"></i> [“When Maps Lie”](https://www.citylab.com/design/2015/06/when-maps-lie/396761/)
-   <i class="fas fa-external-link-square-alt"></i> [Animated Mercator distortion](https://twitter.com/neilrkaye/status/1050740679008296967)
-   <i class="fas fa-external-link-square-alt"></i> [“These Twisted Maps Prove That America Isn’t a Red Country”](https://newrepublic.com/article/115550/cartograms-are-important-inforgraphic-tool)
-   <i class="fas fa-external-link-square-alt"></i> [“The next great fake news threat? Bot-designed maps”](https://www.fastcompany.com/90230916/the-next-great-fake-news-threat-bot-designed-maps)
-   <i class="fas fa-external-link-square-alt"></i> [“New World Map That Accurately Shows Earth in 2D Created by Scientists”](https://www.newsweek.com/equal-earth-map-continents-accurate-2d-1102404)

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   How can you know if a map projection is truthful or misleading?
-   What’s wrong (or not wrong) with using points on maps? Choropleths? Lines?

## Other resources

Check out [this post where someone used **ggplot2** and **sf** to create fancy city map-based art that she printed for a friend](https://www.katiejolly.io/blog/2019-01-21/map-cutouts). You can do similar things after this session!

In addition to the example for this session, you can [check out this tutorial on using the **sf** package to create maps](https://r-spatial.org//r/2018/10/25/ggplot2-sf.html). It shows how to include fancy map stuff like a north arrow and scale bar.

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="maps-and-truth-tab" data-toggle="tab" href="#maps-and-truth" role="tab" aria-controls="maps-and-truth" aria-selected="false">Maps and truth</a>
</li>
<li class="nav-item">
<a class="nav-link" id="putting-data-on-maps-tab" data-toggle="tab" href="#putting-data-on-maps" role="tab" aria-controls="putting-data-on-maps" aria-selected="false">Putting data on maps</a>
</li>
<li class="nav-item">
<a class="nav-link" id="gis-in-r-with-sf-tab" data-toggle="tab" href="#gis-in-r-with-sf" role="tab" aria-controls="gis-in-r-with-sf" aria-selected="false">GIS in R with sf</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/12-slides.html#1">
</iframe>

</div>

</div>

<div id="maps-and-truth" class="tab-pane fade" role="tabpanel" aria-labelledby="maps-and-truth-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/12-slides.html#maps-truth">
</iframe>

</div>

</div>

<div id="putting-data-on-maps" class="tab-pane fade" role="tabpanel" aria-labelledby="putting-data-on-maps-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/12-slides.html#data-on-maps">
</iframe>

</div>

</div>

<div id="gis-in-r-with-sf" class="tab-pane fade" role="tabpanel" aria-labelledby="gis-in-r-with-sf-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/12-slides.html#gis-sf">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sGd_PCE07nym2Df9120FW1U).

-   [Introduction](https://www.youtube.com/watch?v=fOpsbd6-PzU&list=PLS6tnpTr39sGd_PCE07nym2Df9120FW1U)
-   [Maps and truth](https://www.youtube.com/watch?v=acP8mwyLNt0&list=PLS6tnpTr39sGd_PCE07nym2Df9120FW1U)
-   [Putting data on maps](https://www.youtube.com/watch?v=OqKdU0qzfjA&list=PLS6tnpTr39sGd_PCE07nym2Df9120FW1U)
-   [GIS in R with sf](https://www.youtube.com/watch?v=qbrnzSRPyb0&list=PLS6tnpTr39sGd_PCE07nym2Df9120FW1U)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sGd_PCE07nym2Df9120FW1U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Alberto Cairo, *The Truthful Art: Data, Charts, and Maps for Communication* (Berkeley, California: New Riders, 2016).

[^2]: Kieran Healy, *Data Visualization: A Practical Introduction* (Princeton: Princeton University Press, 2018), <http://socviz.co/>.
