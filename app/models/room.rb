class Room < ApplicationRecord
  validates_uniqueness_of :name
  has_many :messages,dependent: :destroy
  # has_paper_trail
  scope :public_rooms, -> { where(is_private: false) }
  after_create_commit {broadcast_append_to "rooms"}
end