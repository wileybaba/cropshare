class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.string :contains
      t.date :start_date
      t.string :share_type
      t.float :cost

      t.timestamps
    end
  end
end
