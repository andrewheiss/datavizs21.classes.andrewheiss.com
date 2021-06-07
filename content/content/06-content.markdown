---
title: "Uncertainty"
linktitle: "6: Uncertainty"
date: "2021-06-21"
start_date: "2021-06-21"
end_date: "2021-06-25"
menu:
  content:
    parent: Course content
    weight: 6
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "06-slides"
---

## Readings

-   <i class="fas fa-book"></i> [Chapter 7](https://clauswilke.com/dataviz/histograms-density-plots.html) in Claus Wilke, *Fundamentals of Data Visualization*[^1]
-   <i class="fas fa-book"></i> Chapters 4, 7, and 11 in Alberto Cairo, *The Truthful Art*[^2]
-   <i class="fas fa-external-link-square-alt"></i> [Why It’s So Hard for Us to Visualize Uncertainty](https://hbr.org/2016/11/why-its-so-hard-for-us-to-visualize-uncertainty)
-   <i class="fab fa-youtube"></i> [Amanda Cox’s keynote address at the 2017 OpenVis Conf](https://www.youtube.com/watch?v=0L1tGo-DvD0)
-   <i class="fas fa-external-link-square-alt"></i> [Communicating Uncertainty When Lives Are on the Line](https://eagereyes.org/blog/2017/communicating-uncertainty-when-lives-are-on-the-line)
-   <i class="fas fa-external-link-square-alt"></i> [Showing uncertainty during the live election forecast](https://flowingdata.com/2016/11/15/showing-uncertainty-during-the-live-election-forecast/) & [Trolling the uncertainty dial](https://flowingdata.com/2017/06/27/trolling-the-uncertainty-dial/)
-   <i class="fas fa-external-link-square-alt"></i> Cédric Scherer, [“Visualizing distributions with raincloud plots with ggplot2”](https://www.cedricscherer.com/2021/06/06/visualizing-distributions-with-raincloud-plots-with-ggplot2/)

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   Why is it important to deal with uncertainty in data?
-   What was good or bad about the New York Times’ 2016 live election guage?
-   Why is it so hard to visualize uncertainty?
-   Why is it so hard to communicate uncertainty to others?

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="communicating-uncertainty-tab" data-toggle="tab" href="#communicating-uncertainty" role="tab" aria-controls="communicating-uncertainty" aria-selected="false">Communicating uncertainty</a>
</li>
<li class="nav-item">
<a class="nav-link" id="visualizing-uncertainty-tab" data-toggle="tab" href="#visualizing-uncertainty" role="tab" aria-controls="visualizing-uncertainty" aria-selected="false">Visualizing uncertainty</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#1">
</iframe>

</div>

</div>

<div id="communicating-uncertainty" class="tab-pane fade" role="tabpanel" aria-labelledby="communicating-uncertainty-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#communicating">
</iframe>

</div>

</div>

<div id="visualizing-uncertainty" class="tab-pane fade" role="tabpanel" aria-labelledby="visualizing-uncertainty-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#visualizing">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sFmy596lUElQakCrKDSHUUU).

-   [Introduction](https://www.youtube.com/watch?v=eZTp8Hninv4&list=PLS6tnpTr39sFmy596lUElQakCrKDSHUUU)
-   [Communicating uncertainty](https://www.youtube.com/watch?v=TCQwkwlj4kM&list=PLS6tnpTr39sFmy596lUElQakCrKDSHUUU)
-   [Visualizing uncertainty](https://www.youtube.com/watch?v=X6zPEOPo-2M&list=PLS6tnpTr39sFmy596lUElQakCrKDSHUUU)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sFmy596lUElQakCrKDSHUUU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Claus E. Wilke, *Fundamentals of Data Visualization* (Sebastopol, California: O’Reilly Media, 2018), <https://clauswilke.com/dataviz/>.

[^2]: Alberto Cairo, *The Truthful Art: Data, Charts, and Maps for Communication* (Berkeley, California: New Riders, 2016).
