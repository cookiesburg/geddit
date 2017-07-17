class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :subscriptions
  has_many :subreddits,through: :subscriptions
  validates_presence_of :username
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end