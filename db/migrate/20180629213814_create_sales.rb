class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :quantity
      t.string :address
      t.string :client
      t.string :file
      t.timestamps
    end
  end
end
