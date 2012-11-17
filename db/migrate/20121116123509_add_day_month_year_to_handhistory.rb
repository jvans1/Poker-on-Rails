class AddDayMonthYearToHandhistory < ActiveRecord::Migration
  def change
    add_column :playerhandscashkeycolumns_hero, :day, :integer
    add_column :playerhandscashkeycolumns_hero, :month, :integer
    add_column :playerhandscashkeycolumns_hero, :year, :integer
  end
end
