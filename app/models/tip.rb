class Tip < ApplicationRecord
  belongs_to :user
  has_many :liketips
end
