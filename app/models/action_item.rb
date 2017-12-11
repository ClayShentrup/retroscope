class ActionItem < ApplicationRecord
  belongs_to(:creator, class_name: 'User')
  belongs_to(:meeting, polymorphic: true)

  validates(:content, presence: true)

  scope(:done, -> { where(done: true) })
end
