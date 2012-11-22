class Hand < ActiveRecord::Base
  set_table_name "holecards"
  set_primary_key "holecard_id"
  belongs_to :handhistory, :class_name => "Handhistory", :foreign_key => "holecardvalue_id"
  def self.bbwon(num_hands) 
    Hand.select{ |h| h.holecard_id < num_hands && h.holecard_id >0}.sort{ |a, b| a.bbwinings<=> b.bbwinings}.reverse.map { |h| h.bbwinings/100 }
  end
  def self.holecards(num_hands)
    Hand.select{|h| h.holecard_id <num_hands && h.holecard_id >0}.sort{ |a, b| a.winnings<=> b.winnings}.map { |h| h.holecardstring  }
  end
  def self.position_winnings(id)
    positions = Handhistory.select("positiontype_id, sum(netamountwon) as winnings").
    where("holecardvalue_id=?", id ).group("positiontype_id").order("positiontype_id")
    position_winnings = convert_to_winnings(positions)
  end

  private 
  def self.convert_to_winnings(array)
    array.sort{ |a, b| a.winnings<=> b.winnings}.reverse.map { |h| h.winnings.to_i/100 }
  end
end
