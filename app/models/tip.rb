class Tip < ApplicationRecord
  belongs_to :user
  has_many :liketips
  validates :images, presence: true
  has_many_attached :images
end
