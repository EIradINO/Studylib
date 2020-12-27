class Tip < ApplicationRecord
  belongs_to :user
  has_many :liketips
  has_many_attached :images
end
