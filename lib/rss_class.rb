class RSSClass
  require 'simple-rss'
  require 'feed-normalizer'
  require 'open-uri'
  require 'google_image_api'
  require 'json'


  def read_rss(rss_link)

    feed_items = SimpleRSS.parse(open(rss_link)).items

  end

  def get_images(term)
    result = GoogleImageApi.find(term, {
        :imgsz => "small",
        :rsz => 8,
        :start => 8,
        :imgtype  => "face",
        :as_filetype => "png"
    })

    #result = JSON.parse(IO.read('tmp/img.json'), symbolize_names: true)

    #result = result.values[0].values[0]
    images = []
    result.images.each do |img|
      images << img['url']
    end

    return images

    # result.images.each do |img|
    #    img['url']
    # end
  end

end

