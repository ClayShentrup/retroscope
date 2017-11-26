class ActionItem < ApplicationRecord
  belongs_to(:meeting, polymorphic: true)

  validates(:content, presence: true)
end
