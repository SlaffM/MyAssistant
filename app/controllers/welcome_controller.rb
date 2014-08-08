
class WelcomeController < ApplicationController

  def index

    if user_signed_in?
      @shedules_type = Shedule.where(user_id: current_user.id).pluck(:type_shedule)
      @test = RSSClass.new.read_rss('http://0.tqn.com/6/g/ruby/b/rss2.xml')
      @images = RSSClass.new.get_images("my hero")
    end

  end

end

