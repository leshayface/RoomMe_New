class CreateHouseRules < ActiveRecord::Migration[5.0]
  def change
    create_table :house_rules do |t|
      t.string :name
    end
  end
end
