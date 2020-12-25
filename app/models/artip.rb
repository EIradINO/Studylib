class Artip < ApplicationRecord
  belongs_to :article
  validates :content, presence: true
  has_many :tiplikes, dependent: :destroy
end
