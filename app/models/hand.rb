
class Hand < ActiveRecord::Base
  set_table_name "holecards"
  set_primary_key "holecard_id"
  has_many :handhistories




  def self.bbwon(num_hands) 
    Hand.select{ |h| h.holecard_id < num_hands && h.holecard_id >0}.sort{ |a, b| a.bbwinings<=> b.bbwinings}.reverse.map { |h| h.bbwinings/100 }
  end
  def self.holecards(num_hands)
    Hand.select{|h| h.holecard_id <num_hands && h.holecard_id >0}.sort{ |a, b| a.winnings<=> b.winnings}.map { |h| h.holecardstring  }
  end


  def self.hand_winnings(hand_string)
    if hand_string.split.length >1
      hand1, hand2 = hand_string.split
      total_winnings = Hand.find_by_holecardstring(hand1).winnings + 
      Hand.find_by_holecardstring(hand2).winnings
    else
      total_winnings = Hand.find_by_holecardstring(hand_string).winnings
    end
    total_winnings
  end


  def self.position_winnings(id1, id2=nil)
    if id2
      id1_winnings = Hand.calc_position_winnings(id1)
      id2_winnings = Hand.calc_position_winnings(id2)
      Hand.add_array_elements(id1_winnings, id2_winnings)
    else
      Hand.calc_position_winnings(id1)
    end
  end

  def self.add_array_elements(array1, array2)
    array1.each_with_index.map { |a, index| a+array2[index] } 
  end

  def self.convert_to_winnings(array)
    array.map { |h| h.winnings.to_i/100 }
  end
  def self.calc_position_winnings(id)
      positions = Handhistory.select("positiontype_id, sum(netamountwon) as winnings").
      where("holecardvalue_id=?", id ).group("positiontype_id").order("positiontype_id")
      position_winnings = convert_to_winnings(positions)
  end



end
