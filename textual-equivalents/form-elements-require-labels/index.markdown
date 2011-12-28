---

layout: article
title: "Form element require labels"
youtube: "ztCXCqt-2-M"
level: basics
tags:
  - forms
  - labels
  - screen reader
  - textual equivalents

elements:
  - form
  - input
  - label
  - select
  - textarea

---
We use forms for a variety of purposes, ranging from trivial, one-box search fields up to hugely complex, multi-page beasts. All forms are, however, built from the same simple components, and these components have excellent support for assistive technologies.

In order for a user to make sense of a form, they need to very clearly understand what exactly they ought to type into each field. This is true regardless of a user's ability or disability: without a well-ordered mapping between a form element and its meaning, it's simply impossible to fill a form out correctly. HTML, of course, gives us the ability to semantically bind a form element to its description via the `label` element.

The element's usage is straightforward: each input field in the form should be given a unique identifier via an `id` attribute, and
