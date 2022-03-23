class AddIntroToCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :intro, :text
  end
end
