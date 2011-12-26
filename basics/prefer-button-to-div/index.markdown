---

layout: article
title: "Prefer `button` to `div` elements"
youtube: "7fPppLXRk4A"
level: basics
tags:
  - button
  - div
  - focus
  - tabindex
  - role
  - aria
  - screen reader

---
MIKE WEST >> Hello, Internet! Welcome to Web Accessibility.

Over the next two to three minutes, I'd like to explain why you should prefer the `button` element to the `div` element when constructing clickable widgets for your websites.

Though the two types of elements can be styled to look similarly, they do, in fact, have distinct semantics and distinct default behaviors. Because of that, it's simply more likely that you'll create an inaccessible `div` widget then it is then if you create the same widget with a `button`.

Let's take a quick look at this demo page in order to see why that's the case.

In the middle of the page you'll see a button, labelled "click me". If I tab to it, then it'll get focus, and we'll hear something distinct from the screen reader. Let's see how that works:

CHROMEVOX >> [Beep] Click me. Button.

MIKE WEST >> "Click me. Button." So the screen reader knows this is a button, and, if I use the enter key, I get a click event. This is great. This is actually exactly what we want, and it means we don't have to do any extra work at all.

Let's turn it into a `div`, just to see how that behaves.

Great, so now we have a `div`. It looks exactly the same, and if I click on it, I get exactly the same behavior.

However, there are three distinct things that I'm going to need to do in order to make this `div` behave more or less the same as the button did.

First of all, we'll note that before, the button could obtain focus: it had a nice, big purple outline. If I tab through this page, you'll see that the `textarea` gets focus, but the `div` never does. `div`s are, by default, not focusable elements. This means we have to do some extra work in order to make them focusable.

Here, we'll have to add a `tabindex` of zero. A `tabindex` of zero means that this is now a focusable element, and that it appears in the tab [order] where it, uh, where it appears in the DOM.

CHROMEVOX >> Click me.

MIKE WEST >> That's great.

First problem, solved.

Now we get to the second problem: if I hit enter in order to click on this element, absolutely nothing happens. That's a bit of a problem. You see, what I've done in JavaScript is simply hooked something up to the `click` event. A `button`, by default, automatically simulates a `click` event for me, when I hit enter.

What I'll have to do for a `div` is something completely different: I'll have to actually add another event listener on either `keydown` or `keyup` or `keypress`, depending on the exact behavior that I want.

These are things that I simply shouldn't have to think about. But I do.

Let's assume, however, that I did that work in JavaScript to make the keyboard work exactly the same as the mouse.

You'll notice one other thing if I tab to it again.

CHROMEVOX >> Click me.

MIKE WEST >> "Click me." There's no "button", right?

The screen reader doesn't understand the semantic I've created. All it sees is a `div` on the page, and a `div` by default has no semantic meaning whatsoever.

I can get around this by using an ARIA role. So if I give this `div` a `role` "button", then we can tell the screen reader to treat it as though it was a button. If I tab back to it:

CHROMEVOX >> [Beep] Click me. Button.

MIKE WEST >> Excellent. So "Click me. Button."

By adding these extra semantics, and by working around in JavaScript, I'm able to make the `div` behave the same as the `button`.

This, however, is work that I: A) often forget to do, and B) can often do incorrectly. It's also something that I don't test quite as well as I test the normal workflow for the `button`.

In this case, it's simply preferable to use a `button`. A `button` means that there's less work for me to do, and less for me to get wrong.

For more discussion of web accessibility, come visit us on the web at W one five Y dot com. That's W fifteen Y dot com.

Thanks for your time.
