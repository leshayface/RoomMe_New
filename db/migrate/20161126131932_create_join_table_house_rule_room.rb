class CreateJoinTableHouseRuleRoom < ActiveRecord::Migration[5.0]
  def change
    create_join_table :house_rules, :rooms do |t|
      t.index [:house_rule_id, :room_id]
      # t.index [:room_id, :house_rule_id]
    end
  end
end
