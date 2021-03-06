class ActionItemSerializer < ActiveModel::Serializer
  attributes(:content, :done, :id)

  belongs_to(:meeting, polymoprhic: true)
  belongs_to(:creator)
end
