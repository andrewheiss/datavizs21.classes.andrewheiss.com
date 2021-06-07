---
title: "Relationships"
linktitle: "7: Relationships"
date: "2021-06-28"
start_date: "2021-06-28"
end_date: "2021-07-02"
menu:
  content:
    parent: Course content
    weight: 7
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "07-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapter 9 in Alberto Cairo, *The Truthful Art*[^1]
-   <i class="fas fa-book"></i> [Chapter 12](https://clauswilke.com/dataviz/visualizing-associations.html) in Claus Wilke, *Fundamentals of Data Visualization*[^2]
-   <i class="fas fa-external-link-square-alt"></i> Kieran Healy, [“Two y-axes”](https://kieranhealy.org/blog/archives/2016/01/16/two-y-axes/)
-   <i class="fas fa-external-link-square-alt"></i> [Two Alternatives to Using a Second Y-Axis](http://stephanieevergreen.com/two-alternatives-to-using-a-second-y-axis/) & [Illusion of success](http://junkcharts.typepad.com/junk_charts/2006/06/illusion_of_suc.html) & [Dissecting two axes](http://junkcharts.typepad.com/junk_charts/2006/01/dissecting_two_.html)
-   <i class="fas fa-external-link-square-alt"></i> [Dual-Scaled Axes in Graphs: Are They Ever the Best Solution?](http://www.perceptualedge.com/articles/visual_business_intelligence/dual-scaled_axes.pdf)[^3]

### Recommended

-   <i class="far fa-file-pdf"></i> [“A Study on Dual-Scale Data Charts”](https://www.lri.fr/~isenberg/publications/papers/Isenberg_2011_ASO.pdf)[^4]

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   How can you correctly and honestly communicate relationships between variables? How can you communicate the uncertainty in those relationships?
-   What are the dangers of visualizing two variables?
-   When is it appropriate to use two y-axes?

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="the-dangers-of-dual-yaxes-tab" data-toggle="tab" href="#the-dangers-of-dual-yaxes" role="tab" aria-controls="the-dangers-of-dual-yaxes" aria-selected="false">The dangers of dual y-axes</a>
</li>
<li class="nav-item">
<a class="nav-link" id="visualizing-correlations-tab" data-toggle="tab" href="#visualizing-correlations" role="tab" aria-controls="visualizing-correlations" aria-selected="false">Visualizing correlations</a>
</li>
<li class="nav-item">
<a class="nav-link" id="visualizing-regressions-tab" data-toggle="tab" href="#visualizing-regressions" role="tab" aria-controls="visualizing-regressions" aria-selected="false">Visualizing regressions</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#1">
</iframe>

</div>

</div>

<div id="the-dangers-of-dual-yaxes" class="tab-pane fade" role="tabpanel" aria-labelledby="the-dangers-of-dual-yaxes-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#dual-y-axes">
</iframe>

</div>

</div>

<div id="visualizing-correlations" class="tab-pane fade" role="tabpanel" aria-labelledby="visualizing-correlations-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#correlations">
</iframe>

</div>

</div>

<div id="visualizing-regressions" class="tab-pane fade" role="tabpanel" aria-labelledby="visualizing-regressions-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#regression">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sGarIxAwCcmheAoKaLRGy1j).

-   [Introduction](https://www.youtube.com/watch?v=GnsuXEI3KoI&list=PLS6tnpTr39sGarIxAwCcmheAoKaLRGy1j)
-   [The dangers of dual y-axes](https://www.youtube.com/watch?v=fhlbFgo5UQU&list=PLS6tnpTr39sGarIxAwCcmheAoKaLRGy1j)
-   [Visualizing correlations](https://www.youtube.com/watch?v=emMc3qtw3z0&list=PLS6tnpTr39sGarIxAwCcmheAoKaLRGy1j)
-   [Visualizing regressions](https://www.youtube.com/watch?v=FsnM8e6P71g&list=PLS6tnpTr39sGarIxAwCcmheAoKaLRGy1j)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sGarIxAwCcmheAoKaLRGy1j" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Alberto Cairo, *The Truthful Art: Data, Charts, and Maps for Communication* (Berkeley, California: New Riders, 2016).

[^2]: Claus E. Wilke, *Fundamentals of Data Visualization* (Sebastopol, California: O’Reilly Media, 2018), <https://clauswilke.com/dataviz/>.

[^3]: Stephen Few, “Dual-Scaled Axes in Graphs: Are They Ever the Best Solution?” *Visual Business Intelligence Newsletter*, March 2008, <http://www.perceptualedge.com/articles/visual_business_intelligence/dual-scaled_axes.pdf>.

[^4]: Petra Isenberg et al., “A Study on Dual-Scale Data Charts,” *IEEE Transactions on Visualization and Computer Graphics* 17, no. 12 (2011): 2469–78, doi:[10.1109/tvcg.2011.160](https://doi.org/10.1109/tvcg.2011.160).
