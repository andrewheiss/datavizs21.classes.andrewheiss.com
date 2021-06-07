---
title: "Time"
linktitle: "11: Time"
date: "2021-07-12"
start_date: "2021-07-12"
end_date: "2021-07-16"
menu:
  content:
    parent: Course content
    weight: 11
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "11-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapter 8 in Alberto Cairo, *The Truthful Art*[^1]
-   <i class="fas fa-video"></i> [The Nuclear Threat—The Shadow Peace, part 1](http://www.fallen.io/shadow-peace/1/)
-   <i class="fas fa-external-link-square-alt"></i> [11 Ways to Visualize Changes Over Time – A Guide](https://flowingdata.com/2010/01/07/11-ways-to-visualize-changes-over-time-a-guide/)
-   A bunch of (really) short blog posts:
    -   <i class="fas fa-external-link-square-alt"></i> [What a Hundred Million Calls to 311 Reveal About New York](https://www.wired.com/2010/11/ff_311_new_york/) (just look at the picture; you don’t need to read this unless you’re really curious about trends in 311 calls)
    -   <i class="fas fa-external-link-square-alt"></i> [A century of ocean shipping animated](https://flowingdata.com/2012/04/12/a-century-of-ocean-shipping-animated/)
    -   <i class="fas fa-external-link-square-alt"></i> [What is seasonal adjustment and why is it used?](http://junkcharts.typepad.com/junk_charts/2010/11/what-is-seasonal-adjustment-and-why-is-it-used.html)
    -   <i class="fas fa-external-link-square-alt"></i> [The start-at-zero rule](http://junkcharts.typepad.com/junk_charts/2005/09/the_startatzero.html)
    -   <i class="fas fa-external-link-square-alt"></i> [Keeping one’s appetite after touring the sausage factory](http://junkcharts.typepad.com/numbersruleyourworld/2011/02/keeping-ones-appetite-after-touring-the-sausage-factory.html)
    -   <i class="fas fa-external-link-square-alt"></i> [How Common is Your Birthday? This Visualization Might Surprise You](http://thedailyviz.com/2016/09/17/how-common-is-your-birthday-dailyviz/)

### Recommended

-   <i class="fas fa-video"></i> [The Fallen of World War II](http://www.fallen.io/ww2/)
-   <i class="far fa-file-pdf"></i> [Visualizing Statistical Mix Effects and Simpson’s Paradox](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/42901.pdf)[^2]
-   <i class="fas fa-external-link-square-alt"></i> [How To Fix a Toilet (And Other Things We Couldn’t Do Without Search)](http://how-to-fix-a-toilet.com/)

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   When is it okay (or not) to truncate the y-axis?
-   It is remarkably easy to mislead people with many of these chart types. Why? How can you avoid the same mistakes?
-   All these types of charts are good at communicating change over time, but some are more appropriate in different situations. When is it best to use these different types (e.g. line graphs vs. area graphs vs. horizon charts vs. heatmaps, etc.)?

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="axis-issues-tab" data-toggle="tab" href="#axis-issues" role="tab" aria-controls="axis-issues" aria-selected="false">Axis issues</a>
</li>
<li class="nav-item">
<a class="nav-link" id="visualizing-time-tab" data-toggle="tab" href="#visualizing-time" role="tab" aria-controls="visualizing-time" aria-selected="false">Visualizing time</a>
</li>
<li class="nav-item">
<a class="nav-link" id="starting-ending-and-decomposing-time-tab" data-toggle="tab" href="#starting-ending-and-decomposing-time" role="tab" aria-controls="starting-ending-and-decomposing-time" aria-selected="false">Starting, ending, and decomposing time</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#1">
</iframe>

</div>

</div>

<div id="axis-issues" class="tab-pane fade" role="tabpanel" aria-labelledby="axis-issues-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#axis-issues">
</iframe>

</div>

</div>

<div id="visualizing-time" class="tab-pane fade" role="tabpanel" aria-labelledby="visualizing-time-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#visualizing-time">
</iframe>

</div>

</div>

<div id="starting-ending-and-decomposing-time" class="tab-pane fade" role="tabpanel" aria-labelledby="starting-ending-and-decomposing-time-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#decomposing">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sG0DXT1Bvx0-hQkHrWBABa1).

-   [Introduction](https://www.youtube.com/watch?v=nBVnR_bT8j0&list=PLS6tnpTr39sG0DXT1Bvx0-hQkHrWBABa1)
-   [Axis issues](https://www.youtube.com/watch?v=yuBMJF0ncyI&list=PLS6tnpTr39sG0DXT1Bvx0-hQkHrWBABa1)
-   [Visualizing time](https://www.youtube.com/watch?v=EGTUsCjpAQw&list=PLS6tnpTr39sG0DXT1Bvx0-hQkHrWBABa1)
-   [Starting, ending, and decomposing time](https://www.youtube.com/watch?v=xP6rvggkk9w&list=PLS6tnpTr39sG0DXT1Bvx0-hQkHrWBABa1)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sG0DXT1Bvx0-hQkHrWBABa1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Alberto Cairo, *The Truthful Art: Data, Charts, and Maps for Communication* (Berkeley, California: New Riders, 2016).

[^2]: Zan Armstrong and Martin Wattenberg, “Visualizing Statistical Mix Effects and <span class="nocase">Simpson’s</span> Paradox,” in *Proceedings of IEEE InfoVis 2014*, 2014, <https://research.google.com/pubs/pub42901.html>.
