class Subreddit <ApplicationRecord
  has_many :posts
  has_and_belongs_to_many :users
  validates :title, uniqueness: true
end