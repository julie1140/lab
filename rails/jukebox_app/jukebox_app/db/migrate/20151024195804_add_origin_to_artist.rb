class AddOriginToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :origin, :string
  end
end
