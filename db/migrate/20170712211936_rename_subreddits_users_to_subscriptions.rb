class RenameSubredditsUsersToSubscriptions < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :subreddits_users, :subscriptions
  end

  def self.down
    rename_table :subscriptions, :subreddits_users
  end
  
end
