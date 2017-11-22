class TeamSerializer < ActiveModel::Serializer
  attributes(:name)

  has_many(:whiteboard_items, polymorphic: true)
end
