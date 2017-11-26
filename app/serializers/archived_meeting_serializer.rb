class ArchivedMeetingSerializer < ActiveModel::Serializer
  attributes(:created_at)

  belongs_to(:team)

  has_many(:action_items, polymorphic: true)
  has_many(:whiteboard_items, polymorphic: true)
end
