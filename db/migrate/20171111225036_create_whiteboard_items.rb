class CreateWhiteboardItems < ActiveRecord::Migration[5.1]
  def change
    create_table :whiteboard_items do |t|
      t.string :content

      t.timestamps
    end
  end
end
