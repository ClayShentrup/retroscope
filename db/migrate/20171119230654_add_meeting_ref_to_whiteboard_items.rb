class AddMeetingRefToWhiteboardItems < ActiveRecord::Migration[5.1]
  def change
    add_reference(:whiteboard_items, :meeting, polymorphic: true)
  end
end
