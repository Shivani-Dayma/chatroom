class Message < ApplicationRecord
  belongs_to :user,dependent: :destroy
  belongs_to :room,dependent: :destroy
  # has_paper_trail
  after_create_commit { broadcast_append_to self.room }
end
