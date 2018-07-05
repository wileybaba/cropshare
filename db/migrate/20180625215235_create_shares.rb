class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.references :user, foreign_key: true
      t.text :contains
      t.date :start_date
      t.time :regularity
      t.text :availability
      t.money :cost

      t.timestamps
    end
    add_index :shares, [:user_id, :created_at]
  end
end
