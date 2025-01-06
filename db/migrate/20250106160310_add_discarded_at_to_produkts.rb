class AddDiscardedAtToProdukts < ActiveRecord::Migration[7.1]
  def change
    add_column :produkts, :discarded_at, :datetime
    add_index :produkts, :discarded_at
  end
end
