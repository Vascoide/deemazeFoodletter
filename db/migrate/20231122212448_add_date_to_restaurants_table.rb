class AddDateToRestaurantsTable < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :date, :date
  end
end
