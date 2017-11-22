class WhiteboardItemSerializer < ActiveModel::Serializer
  attributes(:content, :emotion, :id)

  belongs_to(:meeting, polymoprhic: true)
end
