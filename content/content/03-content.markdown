---
title: "Mapping data to graphics"
linktitle: "3: Mapping data to graphics"
date: "2021-06-14"
start_date: "2021-06-14"
end_date: "2021-06-18"
menu:
  content:
    parent: Course content
    weight: 3
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "03-slides"
---

## Readings

-   <i class="fas fa-external-link-square-alt"></i> Cédric Scherer, [“Colors and emotions in data visualization”](https://www.storytellingwithdata.com/blog/2021/6/8/colors-and-emotions-in-data-visualization) (this fits better with the material from session 2, but it was just barely published that week so I couldn’t include it then)
-   <i class="fab fa-youtube"></i> Hans Rosling, [“200 Countries, 200 Years, 4 Minutes”](https://www.youtube.com/watch?v=jbkSRLYSojo)
-   <i class="fas fa-book"></i> [Chapter 2](https://clauswilke.com/dataviz/aesthetic-mapping.html) in Claus Wilke, *Fundamentals of Data Visualization*[^1]
-   <i class="fas fa-book"></i> [Chapter 3](http://socviz.co/makeplot.html) in Kieran Healy, *Data Visualization*[^2]

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   Why is it important to visualize variables and data?
-   What does it mean to map data to graph aesthetics?
-   What data was mapped to which aesthetics in Rosling’s video?

## Other resources

[This tutorial by Cédric Scherer](https://www.cedricscherer.com/2019/05/17/the-evolution-of-a-ggplot-ep.-1/) is an excellent demonstration of the grammar of graphics and the sequential nature of building up a plot layer-by-layer.

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="data-aesthetics-and-the-grammar-of-graphics-tab" data-toggle="tab" href="#data-aesthetics-and-the-grammar-of-graphics" role="tab" aria-controls="data-aesthetics-and-the-grammar-of-graphics" aria-selected="false">Data, aesthetics, and the grammar of graphics</a>
</li>
<li class="nav-item">
<a class="nav-link" id="grammatical-layers-tab" data-toggle="tab" href="#grammatical-layers" role="tab" aria-controls="grammatical-layers" aria-selected="false">Grammatical layers</a>
</li>
<li class="nav-item">
<a class="nav-link" id="aesthetics-in-extra-dimensions-tab" data-toggle="tab" href="#aesthetics-in-extra-dimensions" role="tab" aria-controls="aesthetics-in-extra-dimensions" aria-selected="false">Aesthetics in extra dimensions</a>
</li>
<li class="nav-item">
<a class="nav-link" id="tidy-data-tab" data-toggle="tab" href="#tidy-data" role="tab" aria-controls="tidy-data" aria-selected="false">Tidy data</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#1">
</iframe>

</div>

</div>

<div id="data-aesthetics-and-the-grammar-of-graphics" class="tab-pane fade" role="tabpanel" aria-labelledby="data-aesthetics-and-the-grammar-of-graphics-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#grammar-of-graphics">
</iframe>

</div>

</div>

<div id="grammatical-layers" class="tab-pane fade" role="tabpanel" aria-labelledby="grammatical-layers-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#grammatical-layers">
</iframe>

</div>

</div>

<div id="aesthetics-in-extra-dimensions" class="tab-pane fade" role="tabpanel" aria-labelledby="aesthetics-in-extra-dimensions-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#extra-dimensions">
</iframe>

</div>

</div>

<div id="tidy-data" class="tab-pane fade" role="tabpanel" aria-labelledby="tidy-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#tidy-data">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sF-mpzuaQaDw5VoOgp359Z9).

-   [Introduction](https://www.youtube.com/watch?v=ukDGvD3XXHg&list=PLS6tnpTr39sF-mpzuaQaDw5VoOgp359Z9)
-   [Data, aesthetics, and the grammar of graphics](https://www.youtube.com/watch?v=S56YAocj-hk&list=PLS6tnpTr39sF-mpzuaQaDw5VoOgp359Z9)
-   [Grammatical layers](https://www.youtube.com/watch?v=DVr8ubJ7JHk&list=PLS6tnpTr39sF-mpzuaQaDw5VoOgp359Z9)
-   [Aesthetics in extra dimensions](https://www.youtube.com/watch?v=pfYkWZcTHAM&list=PLS6tnpTr39sF-mpzuaQaDw5VoOgp359Z9)
-   [Tidy data](https://www.youtube.com/watch?v=KHpZ1oa_99g&list=PLS6tnpTr39sF-mpzuaQaDw5VoOgp359Z9)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sF-mpzuaQaDw5VoOgp359Z9" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Claus E. Wilke, *Fundamentals of Data Visualization* (Sebastopol, California: O’Reilly Media, 2018), <https://clauswilke.com/dataviz/>.

[^2]: Kieran Healy, *Data Visualization: A Practical Introduction* (Princeton: Princeton University Press, 2018), <http://socviz.co/>.
