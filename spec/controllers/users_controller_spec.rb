require 'rails_helper'



RSpec.describe UsersController, :type => :controller do

  let(:user) { FactoryGirl.create(:user) }

  describe "GET 'profile'" do

    before { visit root_path }

    specify 'whenever a user is signed in or not' do
      expect(page).to have_link('Home', root_path)
    end



  end

end
