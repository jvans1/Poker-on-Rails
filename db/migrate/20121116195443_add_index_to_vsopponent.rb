class AddIndexToVsopponent < ActiveRecord::Migration
  def change
    add_index :playervsplayer_hero, :pokerhand_id
  end
end
