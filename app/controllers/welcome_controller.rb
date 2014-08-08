
class WelcomeController < ApplicationController

  def index

    if user_signed_in?
      @shedule_type = Shedule.where(user_id: current_user.id).pluck(:type_shedule).first
      @test = RSSClass.new.read_rss('http://0.tqn.com/6/g/ruby/b/rss2.xml')
      @images = RSSClass.new.get_images(@shedule_type) if @shedule_type

    end

  end

end

