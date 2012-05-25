# Inspired by 
# github.com/mojombo/jekyll/blob/master/lib/jekyll/tags/include.rb
# github.com/imathis/octopress/blob/master/plugins/render_partial.rb

module Jekyll
	
	class IncludeTag < Liquid::Tag
		def initialize(tag_name, file, tokens)
			super	
			@file = file.strip
		end

		def render(context)
			File.read(@file)
		end
	end

end

Liquid::Template.register_tag('render_partial', Jekyll::IncludeTag)
