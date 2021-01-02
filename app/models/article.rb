class Article < ApplicationRecord
  belongs_to :user
  has_many :arlikes, dependent: :destroy
  has_many :rooms, dependent: :destroy
  has_many :artips, dependent: :destroy
  # validates :title, presence: true
  # validates :content, presence: true
  accepts_nested_attributes_for :artips
  has_many :containers, dependent: :destroy
  accepts_nested_attributes_for :containers
  has_rich_text :content
  has_many :liked_users, through: :arlikes, source: :user
end
