class AddIsSystemToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :is_system, :boolean, default: :false
    remove_column :experiences, :is_system
    remove_column :posts, :tag_id
  end
end
