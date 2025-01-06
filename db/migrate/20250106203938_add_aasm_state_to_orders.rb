class AddAasmStateToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :aasm_state, :string
  end
end
