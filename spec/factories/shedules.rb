# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shedule do
    type_shedule "Train"
    favorite_town_to "Moscow"
    favorite_town_from "Khimki"
  end
end
