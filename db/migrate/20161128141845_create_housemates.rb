class CreateHousemates < ActiveRecord::Migration[5.0]
  def change
    create_table :housemates do |t|

      t.integer :room_id
      t.integer :numb_current_mates
      t.integer :pref_gender
      t.integer :pref_occupation
      t.integer :pref_age_min
      t.integer :pref_age_max


      t.timestamps
    end
  end
end
