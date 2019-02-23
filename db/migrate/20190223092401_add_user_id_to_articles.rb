class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def change
    unless column_exists? :articles, :user_id
    add_column :articles, :user_id, :integer
    end
  end
end
