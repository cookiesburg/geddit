class Subreddit <ApplicationRecord
  has_many :posts
  has_many :subscriptions
  has_many :users, through: :subscriptions
  validates :title, uniqueness: true
end