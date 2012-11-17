class AddBbwinningsColumnToHolecards < ActiveRecord::Migration
  def change
    add_column :holecards, :bbwinings, :integer
  end
end
