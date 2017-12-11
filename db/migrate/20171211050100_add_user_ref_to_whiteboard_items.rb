class AddUserRefToWhiteboardItems < ActiveRecord::Migration[5.1]
  def change
    add_reference(:whiteboard_items, :user, polymorphic: true)
  end
end
