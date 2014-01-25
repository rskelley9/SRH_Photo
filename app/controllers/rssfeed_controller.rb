require 'rss/2.0'
require 'open-uri'

class RssfeedController < ApplicationController

  require 'rss/2.0'
  require 'open-uri'

  def index
    feed_url = 'http://www.npr.org/rss/rss.php?id=1001'
    output = "<h1>Recent Posts</h1>"
    open(feed_url) do |http|
      response = http.read
      result = RSS::Parser.parse(response, false)
      output += "Feed Title: #{result.channel.title}<br />"
      result.items.each_with_index do |item, i|
        output += "#{i+1}. <a href='#{item.link}'>#{item.title}</a><br />" if i < 10
      end
    end
    render :text => output
  end

end
