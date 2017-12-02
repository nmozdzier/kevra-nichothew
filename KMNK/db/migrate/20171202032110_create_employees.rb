class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.int :employeeID
      t.string :firstName
      t.string :lastName
      t.string :password

      t.timestamps null: false
    end
  end
end
