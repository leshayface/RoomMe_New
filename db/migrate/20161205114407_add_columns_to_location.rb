class AddColumnsToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :suburb, :string
    add_column :locations, :province, :string
    add_column :locations, :country, :string
  end
end
