class Team < ApplicationRecord
  has_many(:action_items, as: :meeting)
  has_many(:archived_meetings)
  has_many(:whiteboard_items, as: :meeting)
end
