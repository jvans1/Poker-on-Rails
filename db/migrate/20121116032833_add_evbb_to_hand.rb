class AddEvbbToHand < ActiveRecord::Migration
  def change
    add_column :holecards, :evbb, :integer
  end
end
