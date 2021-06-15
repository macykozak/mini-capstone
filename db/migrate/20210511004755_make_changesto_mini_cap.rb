class MakeChangestoMiniCap < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 9, scale: 2
    add_column :products, :totalprodcuts, :string
  end
end
