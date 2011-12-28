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
In the abstract, `<input type='text' name='field1'>` might represent a request for a user's name, it might request a credit card number, it might, in fact, request anything at all, as we use forms for a wide variety of purposes, ranging from trivial, one-box search fields up to hugely complex, multi-page beasts. Fields without clear labels are difficult for a sighted user to piece-together, and nearly impossible for a visually impaired user. This `input` would be read out as "Edit text." by a screen reader: a user would know that they should type _something_, but not have the slightest clue as to _what_.

A well-ordered mapping between a form element and its meaning is a simple requirement, regardless of a user's ability or disability. HTML, of course, recognizes this, and gives us the ability to bind a description to each form field via the `label` element. Labels are a core component of forms on the web, and have excellent support in browsers and assistive technologies.

A `label`'s usage is straightforward: first, ensure that each input field has a unique `id` attribute (even if it already has a `name`). Then, for each input field, add a `label` element that contains the field's description and a `for` attribute set to the value you chose for the field's `id` attribute. A simple login form's fields might look like the following:


    <label for='username'>User Name:</label>
    <input id='username' type='text' name='field1'>
    
    <label for='userpassword'>Password:</label>
    <input id='userpassword' type='password' name='field2'>

 
This semantically binds the first `input` to the text "user name", and the second to the text "password." All your site's users will have a better experience when filling out the form: sighted users can use the label as a click target, making it easier to select fields or check checkboxes, and users of assistive technologies will be provided with clear context to help them build a mental image of the form's requirements.

Labels must be applied to all `select` and `textarea` elements, and all `input` elements of types other than `file`, `submit`, `reset`, `image`, and `button`. Those types of `input` fields must contain a `value` attribute (or `alt` attribute, in the case of an `input` of type `image`), which serves the same purpose as a `label`. Even if, for some reason, your designer is crazy enough to insist that labels not be visible on the page, they should still be present in your markup to provide semantic context.
