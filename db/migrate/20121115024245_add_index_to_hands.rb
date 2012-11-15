class AddIndexToHands < ActiveRecord::Migration
  def change
    add_index :holecards, :holecardstring
    add_index :holecards, :holecard_id

  end
end
