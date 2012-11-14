class AddStats < ActiveRecord::Migration
  def up
    create_table :stats 
    add_column :stats, :hand, :string
    add_column :stats, :count, :integer
  end

  def down
  end
end
