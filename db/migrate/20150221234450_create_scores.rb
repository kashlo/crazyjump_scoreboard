class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :player_name, null: false
      t.integer :amount, null: false
      # t.string :token, null: false
      t.string :ip
      t.string :device_model
      t.string :device_type

      t.timestamps null: false
    end
  end
end
