class AddIsSystemToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :is_system, :boolean, default: :false
  end
end
