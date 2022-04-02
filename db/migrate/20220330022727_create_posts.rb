class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :experience_id
      t.integer :tag_id
      t.text :body

      t.timestamps
    end
  end
end
