class CreateShedules < ActiveRecord::Migration
  def change
    create_table :shedules do |t|
      t.string :type_shedule
      t.belongs_to :user, index: true
      t.string :favorite_town_to
      t.string :favorite_town_from
      t.timestamps
    end
  end
end
