class QueueOnline
  require 'open-uri'

  def get_html
    url = 'http://er.zdravmo.ru/registratu/3/Himki_gorodskoi_okrug/khimkinskaya_detskaya_gorodskaya_poliklinika_4_pediatricheskoe_otdelenie/'
    page = open(url)
    text = page.read
    return text
  end

end