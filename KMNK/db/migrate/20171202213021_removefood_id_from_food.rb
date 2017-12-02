class RemovefoodIdFromFood < ActiveRecord::Migration
  def change
    remove_column :foods, :foodID
  end
end
