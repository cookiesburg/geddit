class RemovePostIdFromSubreddits < ActiveRecord::Migration[5.1]
  def change
    remove_column :subreddits, :post_id, foreign_key: true
  end
end
