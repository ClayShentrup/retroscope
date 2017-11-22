class Team < ApplicationRecord
  has_many(:whiteboard_items, as: :meeting)
end
