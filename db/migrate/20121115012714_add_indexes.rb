class AddIndexes < ActiveRecord::Migration
  def up
    add_index :playerhandscashkeycolumns_hero, :pokerhand_id
    add_index :playerhandscashkeycolumns_hero, :holecardvalue_id
    add_index :playerhandscashkeycolumns_hero, :netamountwon
  end

  def down
  end
end
