class ImageClass

  require 'google_image_api'

  def get_images(term)
    result = GoogleImageApi.find(term, {
        :imgsz => "small",
        :rsz => 8,
        :start => 8,
        #:imgtype  => "clipart",
        #:as_filetype => "png"
    })

    images = []
    result.images.each do |img|
      images << [img['url'], img['tbWidth'], img['tbHeight']]
    end

    return images


    #for local debug

    #result = JSON.parse(IO.read('tmp/img.json'), symbolize_names: true)

    #result = result.values[0].values[0]

    # result.images.each do |img|
    #    img['url']
    # end
  end

end