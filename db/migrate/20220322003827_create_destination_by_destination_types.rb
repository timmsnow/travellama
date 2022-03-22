class CreateDestinationByDestinationTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :destination_by_destination_types do |t|
      t.integer :destination_id
      t.integer :destination_type_id
      t.timestamps
    end
  end
end
