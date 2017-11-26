class ArchivedMeeting < ApplicationRecord
  belongs_to(:team)
  has_many(:action_items, as: :meeting)
  has_many(:whiteboard_items, as: :meeting)
end
