class RemoveUserIdFromShares < ActiveRecord::Migration[5.2]
  def change
    remove_column :shares, :user_id, :integer
  end
end
