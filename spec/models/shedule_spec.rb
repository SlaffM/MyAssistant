require 'rails_helper'

# RSpec.describe Shedule, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Shedule do

  it "has a valid factory" do
    expect(FactoryGirl.build(:shedule)).to be_valid
  end

  it {should belong_to(:user) }
end