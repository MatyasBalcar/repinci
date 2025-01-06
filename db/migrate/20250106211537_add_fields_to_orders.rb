class AddFieldsToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :instagram, :string
    add_column :orders, :phone_number, :string
    add_column :orders, :email, :string
  end
end
