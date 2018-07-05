class CreateProducerProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :producer_profiles do |t|

      t.timestamps
    end
  end
end
