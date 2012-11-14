class AddColumnProfitsToHolecards < ActiveRecord::Migration
  def change
    add_column :holecards, :profits, :integer
  end
end
