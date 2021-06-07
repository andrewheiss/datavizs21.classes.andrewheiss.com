---
title: "Amounts and proportions"
linktitle: "4: Amounts and proportions"
date: "2021-06-14"
start_date: "2021-06-14"
end_date: "2021-06-18"
menu:
  content:
    parent: Course content
    weight: 4
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "04-slides"
---

## Readings

-   <i class="fas fa-book"></i> [Chapter 6](https://clauswilke.com/dataviz/visualizing-amounts.html) in Claus Wilke, *Fundamentals of Data Visualization*[^1]
-   <i class="fas fa-book"></i> Chapter 6 in Alberto Cairo, *The Truthful Art*[^2]
-   <i class="fas fa-book"></i> [Chapter 10](https://clauswilke.com/dataviz/visualizing-proportions.html) in Claus Wilke, *Fundamentals of Data Visualization*[^3]
-   <i class="fas fa-external-link-square-alt"></i> [Engaging Readers with Square Pie/Waffle Charts](https://eagereyes.org/blog/2008/engaging-readers-with-square-pie-waffle-charts)
-   <i class="fas fa-external-link-square-alt"></i> [Understanding Pie Charts](https://eagereyes.org/techniques/pie-charts)
-   <i class="fas fa-external-link-square-alt"></i> [Square pie chart beats out the rest in perception study](https://flowingdata.com/2016/07/15/square-pie-chart-beats-out-the-rest-in-perception-study/)
-   <i class="fab fa-twitter"></i> [Twitter thread](https://twitter.com/janinegibson/status/1244519429825802240) from John Burn-Murdoch on why the *Financial Times* uses log scales in their COVID-19 tracking charts
-   <i class="fab fa-twitter"></i> [Tweet](https://twitter.com/jburnmurdoch/status/1238914490772701185) and [Twitter thread](https://twitter.com/jburnmurdoch/status/1242904596856614912) from John Burn-Murdoch on why the *Financial Times* doesn’t use population-adjusted numbers in their COVID-19 tracking charts
-   <i class="fab fa-twitter"></i> [Video from the *Financial Times* about the design decisions behind their COVID-19 tracking charts](https://twitter.com/janinegibson/status/1244519429825802240)

### Recommended

-   <i class="fas fa-external-link-square-alt"></i> [See how to create your own COVID-19 tracking chart with R](https://robjhyndman.com/hyndsight/logratios-covid19/)

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   How do these types of visualizations help or hinder our search for truth in data?
-   What do you think of the *Financial Times* explanations of their use of absolute numbers (not per capita numbers) and log scales (not regular scales)? How have these decisions affected your perception of the pandemic? How have they affected others’ perceptions?

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="reproducibility-tab" data-toggle="tab" href="#reproducibility" role="tab" aria-controls="reproducibility" aria-selected="false">Reproducibility</a>
</li>
<li class="nav-item">
<a class="nav-link" id="amounts-tab" data-toggle="tab" href="#amounts" role="tab" aria-controls="amounts" aria-selected="false">Amounts</a>
</li>
<li class="nav-item">
<a class="nav-link" id="proportions-tab" data-toggle="tab" href="#proportions" role="tab" aria-controls="proportions" aria-selected="false">Proportions</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#1">
</iframe>

</div>

</div>

<div id="reproducibility" class="tab-pane fade" role="tabpanel" aria-labelledby="reproducibility-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#reproducibility">
</iframe>

</div>

</div>

<div id="amounts" class="tab-pane fade" role="tabpanel" aria-labelledby="amounts-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#amounts">
</iframe>

</div>

</div>

<div id="proportions" class="tab-pane fade" role="tabpanel" aria-labelledby="proportions-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#proportions">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sEdnMYtNP3U3C2AsQZycEyP).

-   [Introduction](https://www.youtube.com/watch?v=K8wELKhqgn0&list=PLS6tnpTr39sEdnMYtNP3U3C2AsQZycEyP)
-   [Reproducibility](https://www.youtube.com/watch?v=pBpNaopKCVw&list=PLS6tnpTr39sEdnMYtNP3U3C2AsQZycEyP)
-   [Amounts](https://www.youtube.com/watch?v=5riA81CcHOY&list=PLS6tnpTr39sEdnMYtNP3U3C2AsQZycEyP)
-   [Proportions](https://www.youtube.com/watch?v=3rDH0BWeDIQ&list=PLS6tnpTr39sEdnMYtNP3U3C2AsQZycEyP)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sEdnMYtNP3U3C2AsQZycEyP" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Claus E. Wilke, *Fundamentals of Data Visualization* (Sebastopol, California: O’Reilly Media, 2018), <https://clauswilke.com/dataviz/>.

[^2]: Alberto Cairo, *The Truthful Art: Data, Charts, and Maps for Communication* (Berkeley, California: New Riders, 2016).

[^3]: Wilke, *Fundamentals of Data Visualization*.
