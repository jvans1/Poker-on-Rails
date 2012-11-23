class Allin < ActiveRecord::Base
  # attr_accessible :title, :body
  set_table_name :allinsituations_hero
  belongs_to :handhistory, :class_name=> "Handhistory", :foreign_key => "playerhand_id"
end
