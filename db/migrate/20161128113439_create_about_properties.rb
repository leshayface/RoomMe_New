class CreateAboutProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :about_properties do |t|
      
      t.integer :property_type
      t.integer :numb_rooms
      t.integer :numb_bathrooms
      t.integer :rooms_avail

      t.timestamps
    end
  end
end
