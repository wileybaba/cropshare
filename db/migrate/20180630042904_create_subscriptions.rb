class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.boolean :active
      t.integer :user_id
      t.integer :share_id


      t.timestamps
    end
  end
end
