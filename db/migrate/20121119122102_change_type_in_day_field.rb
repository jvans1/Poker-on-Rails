class ChangeTypeInDayField < ActiveRecord::Migration
  def up
    remove_column :playerhandscashkeycolumns_hero, :day 
    add_column :playerhandscashkeycolumns_hero, :day, :date

  end

  def down
  end
end
