class RenameEvbbColumnInHh < ActiveRecord::Migration
  def up
    rename_column :playerhandscashkeycolumns_hero, :evbb, :evnetwon
  end

  def down
  end
end
