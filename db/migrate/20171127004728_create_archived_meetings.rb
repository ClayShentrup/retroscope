class CreateArchivedMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :archived_meetings do |t|
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
