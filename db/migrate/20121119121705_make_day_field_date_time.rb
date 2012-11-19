class MakeDayFieldDateTime < ActiveRecord::Migration
  def up
    remove_column :playerhandscashkeycolumns_hero, :day 
    add_column :playerhandscashkeycolumns_hero, :day, :datetime 
  end

  def down
  end
end
