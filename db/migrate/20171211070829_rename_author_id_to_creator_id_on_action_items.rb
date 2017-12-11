class RenameAuthorIdToCreatorIdOnActionItems < ActiveRecord::Migration[5.1]
  def change
    change_table(:action_items) do |t|
      t.rename(:author_id, :creator_id)
    end
  end
end
