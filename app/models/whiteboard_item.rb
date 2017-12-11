class WhiteboardItem < ApplicationRecord
  enum(emotion: { happy: 0, meh: 1, sad: 2 })

  belongs_to(:meeting, polymorphic: true)
  belongs_to(:user)
end
