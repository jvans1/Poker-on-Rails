class AddEvbbToPlayerhandscashkeycolumnsHero < ActiveRecord::Migration
  def change
    add_column :playerhandscashkeycolumns_hero, :evbb, :integer
  end
end
