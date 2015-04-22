require 'rails_helper'


RSpec.describe User do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it { should have_many(:shedules)}#.with_foreign_key('user_id') }

end




# RSpec.describe User, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
#
# end

