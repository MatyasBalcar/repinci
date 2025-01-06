class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.integer :quantity
      t.references :produkt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
