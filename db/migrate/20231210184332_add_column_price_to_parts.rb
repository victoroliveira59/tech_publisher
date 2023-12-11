class AddColumnPriceToParts < ActiveRecord::Migration[7.0]
  def change
    add_column :parts, :price, :string
    add_column :parts, :part_number, :decimal
  end
end
