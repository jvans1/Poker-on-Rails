class AddDrop < ActiveRecord::Migration
  def up
        drop_table :stats 
    create_table :stats 
    add_column :stats, :hand, :string
    add_column :stats, :count, :integer


  end

  def down
  end
end
