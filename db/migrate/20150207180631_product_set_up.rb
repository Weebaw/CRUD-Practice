class ProductSetUp < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :in_stock
      t.timestamps
    end
  end
end
