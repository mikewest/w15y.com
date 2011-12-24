MIKE WEST >> Hello, Internet! Welcome to Web Accessibility.

I'd like the next threeish minutes of your life to be dedicated to the necessity of alternative text for images on your webpages. I know that doesn't sound critical, but it is in fact quite important. Let's dive right in.

Broadly speaking, there are two types of images on the web: on the one hand, we have images that add visual flair to our websites but don't actually contain information. On the other hand, we have images that are, in and of themselves, content.

It should be clear to all of us that the latter type of image requires alternative text. Information should always be textually available on a page to users who can't visually parse an image. An image tag with this contextual information might look like this, with the `src`, `height`, and `width` attributes set, all accompanied by an `alt` attribute containing some clever bit of text:

    <img src="./images/901d3n94t3.jpg"
         height="600"
         width="400"
         alt="Alternative text!">

That attribute associates additional semantic information with the image, which can be used by assistive technologies like screen readers in order to give a user who can't _see_ the page some much needed context.

Let's see how that sounds: on this demo page, the first image here has an `alt` attribute. When I interact with it, the screen reader reads:

CHROMEVOX >> The Golden Gate Bridge!

MIKE WEST >> "The Golden Gate Bridge". Now I know what this image is, even though I can't see it.

Later, we'll talk more specifically about what sort of text you should write for what sorts of images; it's enough of a discussion to merit its own conversation. For now, I simply want it to be clear that you must write something, because the alternative is terrible.

Let's assume for a moment we didn't have that `alt` attribute on the image. What would a screen reader do in that situation? In short, it would do its very best to give you whatever context it could. The height and width are meaningless to a visually impaired user, so all it can run with is the image's name.

Let's hear how that sounds:

    <img src="./images/901d3n94t3.jpg"
         height="600"
         width="400">

 
CHROMEVOX >> Nine zero one D three N nine four T three. Image.

MIKE WEST >> This is horrible experience, especially as image names are increasingly unlikely to be useful as we move more and more to systems that automatically generate images of different sizes on the fly. Having meaningless strings of numbers read out is one of the single best ways to frustrate your users, and drive traffic away from your sites.

All images require alternative text, period.

But what about that first type of image? Decoration without semantic meaning often does end up as image tags on our pages, and we don't really want to have alternative text like "decorative bar" read out to visually impaired users, that simply isn't helpful.

In that case, you actually still need an `alt` attribute, but you should explicitly set it to the empty string. An empty `alt` attribute is an entirely different thing from a missing `alt` attribute. The empty attribute says "I've thought about this. This image is purely decorative. Please ignore it." The screen reader will follow your implicit advice, skipping over the image entirely when reading the page.

The third image here demonstrates that: [Click] I'll interact with it, but we hear nothing. The screen reader simply doesn't read this image, we've told the screen reader that it's meaningless.

    <img src="./images/decoration.jpg"
         height="600"
         width="400"
         alt="">

So, in summary: _every_ image requires alternative text. Purely decorative images should contain an empty `alt` attribute so that they're skipped over, informative images should contain a meaningful textual equivalent, and no images at all should be left completely without an `alt` attribute.

For more discussion of accessibility on the web, visit us at w15y.com, that's w15y.com.
