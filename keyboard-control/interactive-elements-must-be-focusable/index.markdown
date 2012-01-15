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
A large number of our users are unable or unwilling to use a mouse. They might
access pages simply via a keyboard, or they might overcome a disability via some
more complex method of input (foot pedals, mouth input, etc.). We as developers
ought to ensure that all our page's functionality works correctly for those
users, therefore it's important to verify that each of a page's interactive
elements is available even when a mouse isn't.

To interact with a page, keyboard users will navigate up and down the DOM,
hopping from element to element with the `tab` key or using any of a number
of keyboard shortcuts offered by their assistive technology to jump directly to
some notable location. These users are capable of interacting with only one
element at a time: as they walk through the list of interactive elements, they
**focus** on one at a time, which instructs the browser to send keyboard events
to that element, enabling interaction. Your first job as a developer is to
ensure that each of the items with which you expect a user to interact can
**obtain focus**, and therefore is capable of supporting keyboard interaction.

If you use natively interactive HTML elements like `input` or `button`, then
you're good to go. The browser ensures that these elements are keyboard
accessible by default, and you'd actually have to work to break them. By
default, the following elements can obtain focus:

*   `a`
*   `area`
*   `input`
*   `select`
*   `textarea`
*   `button`
*   `iframe`

If, on the other hand, you're creating new and innovative widgets via creative
use of other elements (`div` or `span`, for example), then you need to do a bit
of coding in order to ensure that those widgets can obtain `focus`. This,
happily, is trivial: **simply add a `tabindex` attribute to each non-standard
widget you create in order to add it the list of focusable items**.

`tabindex` accepts an integer as it's value, and can be used to define a
specific ordering for the elements on the page: the user will first focus on
the element with `tabindex='1'`, then on the element with `tabindex='2'`, and
so on. This can turn into quite a bit of work, however, and it requires you to
have a very clear mental image of all the controls on a page in order to
construct a sensical tab order.

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
