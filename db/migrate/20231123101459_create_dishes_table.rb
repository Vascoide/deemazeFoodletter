class CreateDishesTable < ActiveRecord::Migration[7.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.belongs_to :restaurants

      t.timestamps
    end
  end
end
