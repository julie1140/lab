class AddSecondsToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :seconds, :integer 
  end
end
