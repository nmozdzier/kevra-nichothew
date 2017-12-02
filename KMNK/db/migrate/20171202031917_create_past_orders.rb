class CreatePastOrders < ActiveRecord::Migration
  def change
    create_table :past_orders do |t|
      t.integer :orderID
      t.integer :userID
      t.integer :employeeID
      t.string :itemsOrdered
      t.decimal :subtotal, precision:4, scale:2
      t.decimal :total, precision:4, scale:2
      t.decimal :startTime, precision:4, scale:2
      t.decimal :completionTime, precision:4, scale:2

      t.timestamps null: false
    end
  end
end
