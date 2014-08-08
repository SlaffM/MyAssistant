
class WelcomeController < ApplicationController

  def index

    @shedules_type =
        Shedule.where(user_id: current_user.id).pluck(
            :type_shedule, :favorite_town_from, :favorite_town_to) if user_signed_in?

    #@test = RSSClass.new.read_rss('http://0.tqn.com/6/g/ruby/b/rss2.xml')
    @test = RSSClass.new.read_rss('rss.xml')

  end

end

