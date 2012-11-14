class CreateCashgamehand < ActiveRecord::Migration
  def change
    create_table :cashgamehands do |t|
      t.timestamps
    end
  end
end
