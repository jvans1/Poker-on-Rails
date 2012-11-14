class CreateGametypes < ActiveRecord::Migration
  def change
    create_table :gametypes do |t|

      t.timestamps
    end
  end
end
