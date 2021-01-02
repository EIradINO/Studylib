class Artip < ApplicationRecord
  belongs_to :article
  has_many :tiplikes, dependent: :destroy
end
