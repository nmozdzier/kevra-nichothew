class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :userID
      t.string :firstName
      t.string :lastName
      t.integer :dateOfBirth
      t.string :email
      t.string :passW
      t.integer :phone
      t.string :address
      t.string :savedOrder
      t.string :lastOrder

      t.timestamps null: false
    end
  end
end
