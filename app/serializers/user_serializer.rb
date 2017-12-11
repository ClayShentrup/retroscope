class UserSerializer < ActiveModel::Serializer
  attributes(:email)

  has_many(:created_action_items)
  has_many(:whiteboard_items)
end
