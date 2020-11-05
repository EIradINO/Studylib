class Room < ApplicationRecord
  validates :title, presence: true
  has_many :messages, dependent: :destroy
  belongs_to :article
end
