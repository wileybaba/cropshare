class ChangeShareRegularityFormatInTable < ActiveRecord::Migration[5.2]
  def change
    change_column :shares, :regularity, :string 
  end
end