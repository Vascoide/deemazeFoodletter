class AddDishListToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :dish_list, :text
  end
end
