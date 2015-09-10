# A plugin for embedding videos from Youtube using a simple Liquid tag, ie: {% youtube 12345678 %}.
# Based of the Youtube plugin from http://www.portwaypoint.co.uk/jekyll-youtube-liquid-template-tag-gist/

module Jekyll
  class Youtube < Liquid::Tag
    @@width = 500
    @@height = 281

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<iframe width="#{@@width}" height="#{@@height}" src="https://www.youtube.com/embed/#{@id}" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)
