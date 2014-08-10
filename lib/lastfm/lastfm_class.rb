class LastfmClass

  require "rubygems"
  require "net/http"
  require 'nokogiri'
  require 'json'

#API
  PARAMS = %w(title url description) #{ title: title, url: website, description: description }
  API_KEY = "17414d7632f3db43019dd9481aff434e"
  LOCATION = "moscow"

  def hash_to_url(params)
    params.to_a.map{|s| s.join('=')}.join('&')
  end

  def get_event_params event
    PARAMS.map{|param| event.search(param).first.to_s}
  end

  def get_events

    params = {
        :method => "geo.getevents",
        :location => LOCATION,
        :api_key => API_KEY
    }

    page = Net::HTTP.get('ws.audioscrobbler.com', "/2.0/?#{hash_to_url(params)}")

    xml_data = Nokogiri::XML(page)

    events = xml_data.search("//events/event").collect do |event|
       p get_event_params(event)
    end

    ev = events.collect do |item| {
        title:       Hash.from_xml(item[0])['title'],
        url:         Hash.from_xml(item[1])['url'],
        description: Hash.from_xml(item[2])['description']}
    end





    # xml_data.search("//events/event").each do |event|
    #   events << get_event_params(event)
    # end

    return ev

  end


  def get_test_xml

    builder = Nokogiri::XML::Builder.new do |xml|
      xml.root {
        xml.products {
          xml.widget {
            xml.id_ "10"
            xml.name "Awesome widget"
          }
        }
      }
    end
    my_xml = builder.to_xml

  end

  # params = {
  #     :method => "geo.getevents",
  #     :location => LOCATION,
  #     :api_key => API_KEY
  # }
  #
  # page = Net::HTTP.get('ws.audioscrobbler.com', "/2.0/?#{hash_to_url(params)}")
  #
  # xml_data = Nokogiri::XML(page)
  #
  # xml_data.search("//events/event").each do |event|
  #   p get_event_params(event)
  # end



#RSS
  #puts agent.
  #         get("http://ws.audioscrobbler.com/2.0/geo/spain/events.rss").content

end