Images are everywhere on the web, but, for obvious reasons, they can present a challenge to visually-impaired users. This challenge has been recognized and squarely addressed in HTML, as images can be given a textual equivalent via an `alt` attribute. The syntax is straightforward:

    <img src="image.png"
         height="600"
         width="400"
         alt="Alternative text!">

Assistive technologies like screen readers will typically read the alternative text you've provided, giving all your users access.

Broadly, the web contains two types of images: images that add visual flair without adding information, and images that are, in and of themselves, content. Both types of images _must_ be labeled with alternative text in order for them to make sense for all users of a site. 