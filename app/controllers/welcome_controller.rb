
class WelcomeController < ApplicationController

  def index

    if user_signed_in?

      @shedule_type = Shedule.where(user_id: current_user.id).pluck(:type_shedule).first
      @rss_feed = RSSClass.new.read_rss('http://0.tqn.com/6/g/ruby/b/rss2.xml')
      @lastfm = LastfmClass.new.get_events
      #lasttm_test = Hash.from_xml(@lastfm)
      #@my_json = lasttm_test
      #@images = ImageClass.new.get_images(@shedule_type) if @shedule_type

    end

  end

end

