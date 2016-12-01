class CreateRoomImages < ActiveRecord::Migration[5.0]
  def change
    create_table :room_images do |t|
      t.string :caption
      t.integer :room_id

      t.timestamps
    end
  end
end
