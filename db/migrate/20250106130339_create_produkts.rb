class CreateProdukts < ActiveRecord::Migration[7.1]
  def change
    create_table :produkts do |t|
      t.integer :cena
      t.string :obrazek
      t.text :popis
      t.string :velikost
      t.string :barva
      t.string :nazev

      t.timestamps
    end
  end
end
