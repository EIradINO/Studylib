class Tip < ApplicationRecord
  belongs_to :user
  has_many :liketips
  has_many_attached :images
  has_many :liked_users, through: :liketips, source: :user
  validates :images, presence: true
end
