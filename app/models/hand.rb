class Hand < ActiveRecord::Base
  # attr_accessible :title, :body
  set_table_name "holecards"
  set_primary_key "holecard_id"
  belongs_to :handhistory, :class_name => "Handhistory", :foreign_key => "holecardvalue_id"
end
