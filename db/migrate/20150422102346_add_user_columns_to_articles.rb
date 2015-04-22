class AddUserColumnsToArticles < ActiveRecord::Migration
  def change

      add_reference :articles, :user, show: true

  end
end
