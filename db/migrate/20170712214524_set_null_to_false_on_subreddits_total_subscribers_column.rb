class SetNullToFalseOnSubredditsTotalSubscribersColumn < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:subreddits, :total_subscribers, false)
  end
end
