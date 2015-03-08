class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :name
      t.string :enrollment_id
      t.string :class
      t.date :expiration
      t.string :campus
      t.string :user_name
      t.string :user_id
      t.datetime :last_printed

      t.timestamps null: false
    end
  end
end
