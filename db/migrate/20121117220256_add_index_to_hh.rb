class AddIndexToHh < ActiveRecord::Migration
  def change
    add_index :playerhandscashkeycolumns_hero, :positiontype_id
  end
end
