class CreatePhotoPaths < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_paths do |t|
      t.string :name
      t.integer :country_id

      t.timestamps
    end
  end
end
