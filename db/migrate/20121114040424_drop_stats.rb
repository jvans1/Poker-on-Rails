class DropStats < ActiveRecord::Migration
  def up
    drop_table :stats 

  end

  def down
  end
end
