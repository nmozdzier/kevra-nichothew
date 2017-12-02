class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :foodID
      t.string :menuCategory
      t.string :name
      t.integer :price
      t.boolean :onMenuNow

      t.timestamps null: false
    end
  end
end
