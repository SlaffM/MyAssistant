class QueueOnline
  require 'open-uri'
  require 'nokogiri'
  require 'json'

  def get_html
    #url = 'http://er.zdravmo.ru/registratu/3/Himki_gorodskoi_okrug/khimkinskaya_detskaya_gorodskaya_poliklinika_1_pediatricheskoe_otdelenie/'

    root = Rails.root.to_s
    url = './lib/parse/site/site.html'
    page = open(url)
    show_medical = []
    doc = Nokogiri::HTML(page)

    doc.css('.scroll-pane').css('li a').each do |link|

      title = link.text.strip.split(/\s{5,}/) if link.children.size > 0

      show_medical << {title.at(0) => title.at(1)}
      show_medical.uniq!
      #title_el = link.at_css('a')
      #title_el.children.each do |child|
      #  child.remove if child.text.include?('Записаться')
      #end

      #title = title_el.text.strip

      #show_medical << title unless title==""
    end

    return show_medical

    #text = page.read

    #med = text.scan(%r{(\s{5,}.*)\s{5,}<span.*com.>(.*)(?=</span)})

    #h = med.map do |name|
    #  {name[0].gsub(/\s{5,}/, '') => name[1]}
    #end

    #return h
  end

end