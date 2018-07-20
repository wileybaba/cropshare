class AddShareIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :share_id, :string
    add_column :locations, :integer, :string
  end
end
