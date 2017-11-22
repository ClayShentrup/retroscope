class AddEmotionToWhiteboardItems < ActiveRecord::Migration[5.1]
  def change
    add_column :whiteboard_items, :emotion, :integer, null: false
  end
end
