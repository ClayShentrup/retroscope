class AddAuthorRefToActionItems < ActiveRecord::Migration[5.1]
  def change
    add_reference(:action_items, :author)
  end
end
