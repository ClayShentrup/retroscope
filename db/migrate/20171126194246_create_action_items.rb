class CreateActionItems < ActiveRecord::Migration[5.1]
  def change
    create_table(:action_items) do |t|
      t.string(:content, null: false)
      t.references(:meeting, polymorphic: true)
      t.boolean(:done, default: false, null: false)

      t.timestamps
    end
  end
end
