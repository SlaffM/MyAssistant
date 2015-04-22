
class WelcomeController < ApplicationController

  #before_filter :authenticate_user!, expect: [:show]
  #before_filter :find_user,          only:   [:show]

  def index

    #if user_signed_in?

      #@shedule_type = @shedules.pluck(:type_shedule).first
      #@rss_feed = RSSClass.new.read_rss('http://0.tqn.com/6/g/ruby/b/rss2.xml')
      #@rss_feed = RSSClass.new.read_rss('http://news.yandex.ru/galleries.rss')
      #@lastfm = LastfmClass.new.get_events
      #lasttm_test = Hash.from_xml(@lastfm)
      #@my_json = lasttm_test
      #@images = ImageClass.new.get_images(@shedule_type) if @shedule_type


      #@parsing = QueueOnline.new.get_html

    #end


  end

  #private

  #  def find_user
  #    @user = User.where(id: current_user.id).first
  #    @shedules = @user.shedules.where(user_id: current_user.id)
  #  end

end

