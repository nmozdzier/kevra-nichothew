class CreatePastOrders < ActiveRecord::Migration
  def change
    create_table :past_orders do |t|
      t.integer :orderID
      t.integer :userID
      t.integer :employeeID
      t.string :itemsOrdered
      t.decimal4 :subtotal
      t.decimal2 :subtotal
      t.decimal4 :total
      t.decimal2 :total
      t.decimal4 :startTime
      t.decimal2 :startTime
      t.decimal4 :completionTime
      t.decimal2 :completionTime

      t.timestamps null: false
    end
  end
end
