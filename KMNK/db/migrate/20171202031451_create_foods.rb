class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.int :foodID
      t.string :menuCategory
      t.string :name
      t.int :price
      t.boolean :onMenuNow

      t.timestamps null: false
    end
  end
end
