class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.int :userID
      t.string :firstName
      t.string :lastName
      t.int :dateOfBirth
      t.string :email
      t.string :passW
      t.int :phone
      t.string :address
      t.string :savedOrder
      t.string :lastOrder

      t.timestamps null: false
    end
  end
end
