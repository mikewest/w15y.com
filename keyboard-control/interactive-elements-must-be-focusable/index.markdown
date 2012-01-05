---

layout: article
title: "Interactive controls must be focusable"
youtube: "T5OClvFL8I8"
level: basics
tags:
  - focus
  - interactive controls
  - screen reader
  - tabindex
  - keyboard

elements:
  - div
  - span

wcag:
  - G202

tldr: >
  `div` and `span` elements, among many others, cannot obtain focus by default.
  Add `tabindex='0'` to any interactive widget built with these nonfocusable
  elements in order to place it into the tab order at it's location in the DOM.

---
Users of assistive technologies are often, for one reason or another, unable to
use a mouse. They might access pages simply via a keyboard, or have some more
complex method of input (foot pedals, mouth input, etc.). In order to make a
page's functionlity available to these users, it's important to ensure that
each of the page's interactive elements is available even when a mouse isn't.

To interact with a page, these users will navigate up and down the DOM, either
hopping from element to element with the `tab` key, or using any of a number of
keyboard shortcuts offered by their assistive technology to jump directly to
some notable location. We call the item with which they are currently
interacting **focused**, or say that it has **obtained focus**. Your job as a
developer is to ensure that each of the items with which you expect a user to
interact can obtain focus, and can therefore be interacted with from the
keyboard.

If you use native HTML elements like `input` or `button`, then you're good to
go. The browser ensures that these elements are keyboard accessible, and you'd
actually have to work to break them. By default, the following elements can
obtain focus:

*   `a`
*   `area`
*   `input`
*   `select`
*   `textarea`
*   `button`
*   `iframe`

If you're creating new and innovative widgets via creative use of other
elements (`div` or `span`, for example), then you need to do a bit of coding
in order to ensure that those widgets can obtain `focus`. This, happily, is
trivial: **simply add a `tabindex` attribute to each non-standard widget you
create in order to force it into the list of focusable items**.

`tabindex` accepts an integer as it's value, and can be used to define a
specific ordering for the elements on the page: the user will first focus on
the element with `tabindex='0'`, then on the element with `tabindex='1'`, and
so on. This is a bit of work, however, as it requires that you manually order
_all_ the focusable elements on a page.

A simpler approach is to construct a DOM that makes sense, and to add a
`tabindex` of `0` to each element that wouldn't normally be capable of
obtaining focus. `tabindex='0'` tells the browser to treat the element as
focuable, and to place it into the tab ordering wherever it would normally fall
based on it's position in the DOM. If you need a `div`, for example, to obtain
focus, the following code would suffice:

    <div id="amazingWidget2" tabindex="0">
      <!-- code, code code -->
    </div>

If you're creating complex interactions that require elements to be focusable
programatically, but kept out of the usual tab order, you can set
`tabindex='-1'`. You need to be quite careful that you're using this correctly,
but it's well suited for "hiding" elements from the tab order that you've
hidden from mouse-users by moving them offscreen.
