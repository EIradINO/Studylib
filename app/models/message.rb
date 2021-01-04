class Message < ApplicationRecord
  has_rich_text :content
  validates :content, presence: true
  after_create_commit { MessageBroadcastJob.perform_later self }
  belongs_to :user
  belongs_to :room
end
