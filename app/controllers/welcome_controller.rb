class WelcomeController < ApplicationController
  def index


    @shedules = Shedule.where(user_id: current_user.id)



    # @shedules.as_json.each do |i|
    #   p i["type_shedule"]
    # end

  end
end
