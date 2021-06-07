---
title: "Text"
linktitle: "13: Text"
date: "2021-07-19"
start_date: "2021-07-19"
end_date: "2021-07-23"
menu:
  content:
    parent: Course content
    weight: 13
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "13-slides"
---

## Readings

-   <i class="fas fa-book"></i> Look through some of the chapters in Julia Silge and David Robinson, [*Tidy Text Mining*](https://www.tidytextmining.com/)[^1] (but *definitely* don’t read them all! You just need to get a taste of what modern text analysis looks like.)
-   A bunch of (really) short things:
    -   <i class="fas fa-external-link-square-alt"></i> Evangeline Reynolds, [“Federalist Papers”](https://evangelinereynolds.netlify.app/post/federalist-papers/)
    -   <i class="fas fa-external-link-square-alt"></i> Julia Silge, [“She Giggles, He Gallops”](https://pudding.cool/2017/08/screen-direction/)
    -   <i class="fas fa-external-link-square-alt"></i> Abby Ohlheiser, [“These are the words most associated with men and women, according to Facebook status updates”](https://www.washingtonpost.com/news/the-intersect/wp/2016/05/28/these-are-the-words-most-associated-with-men-and-women-according-to-facebook-status-updates/)
    -   <i class="fas fa-external-link-square-alt"></i> [Six Ideas for Displaying Qualitative Data](http://annkemery.com/qual-dataviz/)
    -   <i class="fas fa-external-link-square-alt"></i> [Word clouds considered harmful](http://www.niemanlab.org/2011/10/word-clouds-considered-harmful/)
    -   <i class="fas fa-external-link-square-alt"></i> [Word clouds cause death… or something](https://flowingdata.com/2011/10/18/word-clouds-cause-death-or-something/)
    -   <i class="fas fa-external-link-square-alt"></i> [When It’s Ok to Use Word Clouds](https://www.vis4.net/blog/2015/01/when-its-ok-to-use-word-clouds/)
    -   <i class="fas fa-external-link-square-alt"></i> [The Class of 2011](http://www.nytimes.com/interactive/2011/06/10/education/commencement-speeches-graphic.html)
    -   <i class="fas fa-external-link-square-alt"></i> [Every time Ford and Kavanaugh dodged a question, in one chart](https://www.vox.com/policy-and-politics/2018/9/28/17914308/kavanaugh-ford-question-dodge-hearing-chart)
    -   <i class="fab fa-twitter-square"></i> [Tweet by @s\_soroka](https://twitter.com/s_soroka/status/907941270735278085)

### Questions to reflect on

*(Remember, you don’t need to answer all of these—or even any of them! These are just here to help guide your thinking.)*

-   Why is qualitative data difficult to visualize?
-   Why are word clouds so problematic? When is (not) okay to use them?

## Other resources

Check out [this slide show demonstrating a bunch of different ways to visualize text](https://bocoup.github.io/text-vis-ovc/24-text-vis-examples/slides.html), as well as [this collection of 400+ different text visualization techniques](https://textvis.lnu.se/) (!!)

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="qualitative-textbased-data-tab" data-toggle="tab" href="#qualitative-textbased-data" role="tab" aria-controls="qualitative-textbased-data" aria-selected="false">Qualitative text-based data</a>
</li>
<li class="nav-item">
<a class="nav-link" id="crash-course-in-computational-linguistics-tab" data-toggle="tab" href="#crash-course-in-computational-linguistics" role="tab" aria-controls="crash-course-in-computational-linguistics" aria-selected="false">Crash course in computational linguistics</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/13-slides.html#1">
</iframe>

</div>

</div>

<div id="qualitative-textbased-data" class="tab-pane fade" role="tabpanel" aria-labelledby="qualitative-textbased-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/13-slides.html#text-data">
</iframe>

</div>

</div>

<div id="crash-course-in-computational-linguistics" class="tab-pane fade" role="tabpanel" aria-labelledby="crash-course-in-computational-linguistics-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/13-slides.html#computational-linguistics">
</iframe>

</div>

</div>

</div>

<div class="fyi">

**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.

</div>

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sG6yMnZ9sDFwMPusGHGtOYj).

-   [Introduction](https://www.youtube.com/watch?v=FEzCQ2k3zyI&list=PLS6tnpTr39sG6yMnZ9sDFwMPusGHGtOYj)
-   [Qualitative text-based data](https://www.youtube.com/watch?v=o6I49HotNOc&list=PLS6tnpTr39sG6yMnZ9sDFwMPusGHGtOYj)
-   [Crash course in computational linguistics](https://www.youtube.com/watch?v=Pdo7G9keXRM&list=PLS6tnpTr39sG6yMnZ9sDFwMPusGHGtOYj)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sG6yMnZ9sDFwMPusGHGtOYj" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Julia Silge and David Robinson, *Text Mining with R* (Sebastopol, California: O’Reilly Media, 2017), <https://www.tidytextmining.com/>.
