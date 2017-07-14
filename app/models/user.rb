class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_and_belongs_to_many :subreddits
  validates_presence_of :username
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end