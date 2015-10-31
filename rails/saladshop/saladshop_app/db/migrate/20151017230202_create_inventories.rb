class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :ingredient
      t.integer :quantity
      t.string :unit

      t.timestamps null: false
    end
  end
end
