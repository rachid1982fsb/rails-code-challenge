class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :users
    drop_table :articles
    drop_table :favorites
    drop_table :user_searches
  end
end
