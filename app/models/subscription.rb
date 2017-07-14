class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :subreddit
  after_create -> { update_subreddit_total_subscribers }
  after_destroy -> { update_subreddit_total_subscribers(-1) }
  private
  def update_subreddit_total_subscribers(value = 1)
    self.subreddit.total_subscribers += value
    self.subreddit.save
  end
end