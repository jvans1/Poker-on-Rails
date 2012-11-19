class Hand < ActiveRecord::Base
  # attr_accessible :title, :body
  set_table_name "holecards"
  set_primary_key "holecard_id"
  belongs_to :handhistory, :class_name => "Handhistory", :foreign_key => "holecardvalue_id"
  def self.winnings 
    Hand.select{ |h| h.holecard_id < 170}.sort{ |a, b| a.winnings<=> b.winnings}.map { |h| h.winnings }
  end
  def self.holecards
    Hand.select{|h| h.holecard_id <170}.sort{ |a, b| a.winnings<=> b.winnings}.map { |h| h.holecardstring  }
    
  end
end
