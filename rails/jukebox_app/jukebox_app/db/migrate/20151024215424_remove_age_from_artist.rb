class RemoveAgeFromArtist < ActiveRecord::Migration
  def change
    remove_column :artists, :age, :integer
  end
end
