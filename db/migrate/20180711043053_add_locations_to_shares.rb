class AddLocationsToShares < ActiveRecord::Migration[5.2]
  def change
    add_column :shares, :locations, :integer
    add_index :shares, :locations
  end
end
