class CreateJoinTableSubredditsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :subreddits, :users do |t|
      t.index :subreddit_id
      t.index :user_id
    end
  end
end
