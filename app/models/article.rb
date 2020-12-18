class Article < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :rooms, dependent: :destroy
  has_many :artips, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  accepts_nested_attributes_for :artips
  has_rich_text :content
end
