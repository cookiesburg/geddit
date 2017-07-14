class SetDefaultForTotalSubscribersInSubreddits < ActiveRecord::Migration[5.1]
  def change
    change_column(:subreddits, :total_subscribers, :integer, default: 0)
  end
end
