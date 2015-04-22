require 'rails_helper'
require_relative "../../app/controllers/static_pages_controller"

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET 'home'" do
    it "returns '/'" do
      get "home"
      expect(response).to render_template("/")
    end
  end

end
