class AddPocetToProdukts < ActiveRecord::Migration[7.1]
  def change
    add_column :produkts, :pocet, :integer, default: 0
  end
end
