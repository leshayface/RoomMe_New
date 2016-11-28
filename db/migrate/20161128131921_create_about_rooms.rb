class CreateAboutRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :about_rooms do |t|

      
      t.integer :room_id
      t.integer :monthly_rent
      t.boolean :add_utility_cost
      t.integer :room_type
      t.integer :furnished
      t.boolean :ensuite
      t.date :avail_from
      t.integer :min_stay

      t.timestamps
    end
  end
end
