class AddPaperclipToRoom < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :rooms, :image
  end
end
