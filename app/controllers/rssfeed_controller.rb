# require 'rss/2.0'
# require 'open-uri'

class RssfeedController < ApplicationController

  def index
    feed_url = 'http://www.npr.org/rss/rss.php?id=1001'
    header = "Recent Posts"

    @rss_feed = Rssfeed.new(feed_url, header, 10)
   render :_rss_feed
 end

end
