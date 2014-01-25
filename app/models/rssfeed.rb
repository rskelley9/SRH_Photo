require 'rss/2.0'
require 'open-uri'

class Rssfeed

  attr_accessor :output, :feed_url

  def initialize(url, header="Recent Posts", limit=10)
    @feed_url = url.to_s
    @output = "<h1>" + header.to_s + "</h1>"

    open(@feed_url) do |http|
      response = http.read
      result = RSS::Parser.parse(response, false)
      @output += "Feed Title: #{result.channel.title}<br />"
      result.items.each_with_index do |item, i|
        @output += "#{i+1}. <a href='#{item.link}'>#{item.title}</a><br />" if i < limit
      end #do
    end #do

  end #def

  # def limit_posts_to(number)
  #   initialize(@feed_url, @output, number)
  # end


end #class