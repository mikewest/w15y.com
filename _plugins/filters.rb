module Jekyll
  module MarkdownifyFragment
    def markdownify_fragment(input)
      # Runs `markdownify`, but strips the containing `<p></p>` tag.
      site = @context.registers[:site]
      converter = site.getConverterImpl(Jekyll::MarkdownConverter)
      output = converter.convert(input)
      output.gsub(/^<p>|<\/p>$/, "")
    end
  end
end

Liquid::Template.register_filter(Jekyll::MarkdownifyFragment)
