class Shedule < ActiveRecord::Base
  belongs_to :user
  validates  :type_shedule, presence: true

end
