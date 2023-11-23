class RemoveDishListFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :dish_list
  end
end
