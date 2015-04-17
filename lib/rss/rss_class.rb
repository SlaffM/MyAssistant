class RSSClass
  require 'simple-rss'
  require 'open-uri'
  require 'feedjira'


  def read_rss(rss_link)

    #feed_items = SimpleRSS.parse(open(rss_link)).items

    #feed = feed_items.collect do |i|
    #  { :title => i[:title], :url => i[:link] }
    #end

    urls = [rss_link]
    #urls = %w[http://feedjira.com/blog/feed.xml]
    feeds = Feedjira::Feed.fetch_and_parse urls


    feed = feeds[rss_link]
    #feed.title   # => "The Feedjira Blog"
    #feed.url     # => "http://feedjira.com/blog/feed.xml"
    #feed.entries # returns an array of Entry objects


    entries = feed.entries

    return entries

  end

end

