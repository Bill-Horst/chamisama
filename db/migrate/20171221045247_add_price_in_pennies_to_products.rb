class AddPriceInPenniesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :price_in_pennies, :integer
  end
end
