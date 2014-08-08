class RSSClass
  require 'simple-rss'
  require 'feed-normalizer'
  require 'open-uri'
  def read_rss(rss_link)

    #feed_items = SimpleRSS.parse(open(rss_link)).items
    feed_items = FeedNormalizer.parse open(rss_link)
  end

end