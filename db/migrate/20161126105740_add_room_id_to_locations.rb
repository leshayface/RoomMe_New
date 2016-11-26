class AddRoomIdToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :room_id, :integer
  end
end
