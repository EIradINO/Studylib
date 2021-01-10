class Article < ApplicationRecord
  belongs_to :user
  has_many :arlikes, dependent: :destroy
  has_many :rooms, dependent: :destroy
  validates :title, presence: true
  has_many :containers, dependent: :destroy
  accepts_nested_attributes_for :containers
  has_many :liked_users, through: :arlikes, source: :user
end
