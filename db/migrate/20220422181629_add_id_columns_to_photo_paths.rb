class AddIdColumnsToPhotoPaths < ActiveRecord::Migration[6.0]
  def change
    add_column :photo_paths, :experience_id, :integer
    add_column :photo_paths, :post_id, :integer
  end
end
