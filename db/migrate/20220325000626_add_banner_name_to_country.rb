class AddBannerNameToCountry < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :banner_name, :string
  end
end
