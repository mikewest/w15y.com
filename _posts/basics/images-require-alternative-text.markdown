Hello, Internet! Welcome to Web Accessibility.

I'd like the next threeish minutes of your life to be dedicated to the necessity of alternative text for images on your websites. I know that doesn't sound critical, but it is in fact quite important. Let's dive right in.

Broadly speaking, there are two types of images on the web: images that add visual flair without adding information, and images that are, in and of themselves, content.

It should be obvious to all of us that we need alternative text for the latter. Information should always be textually available on a page. The image tag might look like this, with the `src`, `height`, and `width` attributes set, and accompanied by a clever bit of text in the `alt` attribute:

    <img src="./images/DSC_7167.jpg"
         height="600"
         width="400"
         alt="Alternative text!">

That attribute associates additional semantic information with the image, which can be used by assistive technologies to give a user who can't _see_ the page some much needed context.

Let's see how that sounds: on this demo page, the first image has an `alt` attribute. When I interact with it, the screen reader reads:

CHROMEVOX >> The Golden Gate Bridge!

MIKE WEST >> We'll talk later more specifically about what sort of text you should write; it's enough of a discussion to deserve it's own conversation. For now, I simply want it to be clear that you must write _something_, because the alternative is terrible.

Let's assume we didn't have that `alt` attribute on the image. What would a screen reader do? In short, it would do it's very best to give us whatever contextual information it could. The height and width are meaningless to a visually impaired user, so all it can run with is the image's name.

    <img src="./images/DSC_7167.jpg"
         height="600"
         width="400">
         
CHROMEVOX >> D S C Seven One Six Seven. Image.

MIKE WEST >> This is horrible experience, as image names are increasingly unlikely to be useful as we move more and more to systems that generate images on the fly. Having meaningless strings of numbers read out is one of the best ways possible to frustrate users, and drive traffic away from your sites.

All images require alternative text, period.

But what about that first type of image? Decoration without semantic meaning often ends up as image tags, and we don't really want to have "decorative bar" and the like read out to visually impaired users.

In that case, you still need an `alt` attribute, but you should explicitly set it to the empty string. An empty `alt` attribute is an entirely different thing from a missing `alt` attribute. The empty attribute says "I've thought about this. It's decoration. Ignore it.", and the screen reader will follow your implicit advice, skipping over the image entirely when reading the page.

    <img src="./images/decoration.jpg"
         height="600"
         width="400"
         alt="">

So, in summary: _every_ image requires alternative text. Purely decorative images should contain an empty `alt` attribute so that they're skipped over, informative images should contain a meaningful textual equivalent, and no images at all should be left completely without an `alt` attribute.

We'll take a closer look at what exactly constitutes "meaningful" later on, as it's a question worth some discussion time all on it's own.

For more discussion of accessibility on the web, visit http://w15y.com/

Thanks for your time.