class RSSClass
  require 'simple-rss'
  require 'open-uri'


  def read_rss(rss_link)

    feed_items = SimpleRSS.parse(open(rss_link)).items

    feed = feed_items.collect do |i|
      { :title => i[:title], :url => i[:link] }
    end

    return feed

  end

end

