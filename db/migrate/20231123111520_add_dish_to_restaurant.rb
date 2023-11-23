class AddDishToRestaurant < ActiveRecord::Migration[7.1]
  def change
    add_reference :dishes, :restaurant, null: false, foreign_key: true
  end
end
