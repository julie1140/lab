class AddUserToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :user, :string
  end
end
