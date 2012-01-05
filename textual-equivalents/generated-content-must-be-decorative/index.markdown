---

layout: article
title: "Generated content must be decorative"
youtube: ""
level: basics
tags:
  - css
  - generated content
  - :before
  - :after

WCAG:
  - F87

---
It's possible to produce interesting effects using CSS's capabilities to
generate content that will be rendered onto the page. Generated content is at
the core of the [ubiquitus clearfix hack][1], and makes a variety of
interesting visual effects (for example, [curled box shadows][2]) possible.
That said, it's important to ensure that the effects created are presenational
in nature, as generated content generally isn't accessible to users of assistive
technology.



[1]: http://nicolasgallagher.com/micro-clearfix-hack/
[2]: http://www.matthamm.com/box-shadow-curl.html
