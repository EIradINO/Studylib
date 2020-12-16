class Article < ApplicationRecord
  belongs_to :user
  has_many :tips, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :rooms, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
end
