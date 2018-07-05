class AddNameToShare < ActiveRecord::Migration[5.2]
  def change
    add_column :shares, :name, :string
    add_index :shares, :name
  end
end
