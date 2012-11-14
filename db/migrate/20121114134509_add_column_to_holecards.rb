class AddColumnToHolecards < ActiveRecord::Migration
  def change
        add_column :holecards, :count, :integer

  end
end
