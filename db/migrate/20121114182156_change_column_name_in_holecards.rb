class ChangeColumnNameInHolecards < ActiveRecord::Migration
  def up
    rename_column :holecards, :profits, :winnings
  end

  def down
  end
end
