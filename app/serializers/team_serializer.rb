class TeamSerializer < ActiveModel::Serializer
  attributes(:name)

  has_many(:action_items, polymorphic: true)
  has_many(:whiteboard_items, polymorphic: true)
end
