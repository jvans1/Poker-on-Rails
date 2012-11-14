class AddColumnsToStats < ActiveRecord::Migration
  def change
    add_column :stats, :hand, :string
    add_column :stats, :count, :integer
  end
end
