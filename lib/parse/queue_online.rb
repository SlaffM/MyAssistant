class QueueOnline
  require 'open-uri'

  def get_html
    url = 'http://er.zdravmo.ru/registratu/3/Himki_gorodskoi_okrug/khimkinskaya_detskaya_gorodskaya_poliklinika_1_pediatricheskoe_otdelenie/'

    #root = Rails.root.to_s
    #url = './lib/parse/site/site.html'
    page = open(url)
    h = Hash.new

    text = page.read

    med = text.scan(%r{(\s{5,}.*)\s{5,}<span.*com.>(.*)(?=</span)})

    h = med.map do |name|
      {name[0].gsub(/\s{5,}/, '') => name[1]}
    end

    return h
  end

end