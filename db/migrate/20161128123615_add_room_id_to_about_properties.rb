class AddRoomIdToAboutProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :about_properties, :room_id, :integer
  end
end
