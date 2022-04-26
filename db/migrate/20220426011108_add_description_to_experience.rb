class AddDescriptionToExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :description, :text
  end
end
