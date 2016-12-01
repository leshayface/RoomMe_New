class CreateJoinTableRoomAmenityRoom < ActiveRecord::Migration[5.0]
  def change
    create_join_table :room_amenities, :rooms do |t|
      t.index [:room_amenity_id, :room_id]
      # t.index [:room_id, :room_amenity_id]
    end
  end
end
