class CreateProducerProfile < ActiveRecord::Migration[5.2]
  def change
    create_table :producer_profiles do |t|
      t.references :user, foreign_key: true
    end
  end
end
