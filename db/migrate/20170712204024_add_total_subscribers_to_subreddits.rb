class AddTotalSubscribersToSubreddits < ActiveRecord::Migration[5.1]
  def change
    add_column :subreddits, :total_subscribers, :integer
  end
end
