class Handhistory < ActiveRecord::Base
  set_table_name "playerhandscashkeycolumns_hero"
  set_primary_key :pokerhand_id

  belongs_to :gametype
  belongs_to :hand, :class_name => "Hand", :foreign_key => "holecardvalue_id"


  has_one :allin, :class_name=> "Allin",  :foreign_key =>"playerhand_id"

  def self.winnings_over_days(type)
    winnings_per_day = Handhistory.select("day, sum(#{type}) as winnings").
    group("day").order("day").map{|h| h.winnings.to_i/100.0}
    accumulated_winnings_day = winnings_per_day.each_with_index.
    map{|n, index| winnings_per_day.take(index+1).sum}
  end


  def self.winnings_by_day(date)
    date_type = Handhistory.select("day, sum(bbwon) as winnings").group(date) 
    date_type.map{|y| y.winnings.to_i/100}
  end

  def self.percent_winning_hands_by_position
    winning_hands = {:sb=>0,:bb=>0,:utg => 0, :hj=> 0, :co=> 0, :btn=>0}
    hand_position_winnings = Handhistory.select("positiontype_id, sum(netamountwon) as winnings, holecardvalue_id").
    group("positiontype_id, holecardvalue_id").where("holecardvalue_id<170 AND numberofplayers!=2")
    hand_position_winnings.each do |hpw|
      case hpw.positiontype_id
        when 0
          winning_hands[:sb] +=1 if hpw.winnings.to_i >0
        when 1
          winning_hands[:bb] +=1 if hpw.winnings.to_i >0
        when 2            
          winning_hands[:utg] +=1 if hpw.winnings.to_i >0
        when 3
          winning_hands[:hj] +=1 if hpw.winnings.to_i >0
        when 4
          winning_hands[:co] +=1 if hpw.winnings.to_i >0
        when 5
          winning_hands[:btn] +=1 if hpw.winnings.to_i >0
      end
    end
      winning_hands.map{ |key, value| value/169.00*100}
  end




  def self.vpip_by_position
    positions ={:small_blind=>0, :big_blind =>0, :utg=>0, :utg1=>0, :co =>0, :btn =>0, :sbvpip=>0, :bbvpip=>0, :utgvpip=>0, :utg1vpip=>0, :covpip=>0, :btnvpip=>0}
    vpip = Handhistory.select("positiontype_id, numberofplayers, didvpip")
    vpip.each do |hand|
        case hand.positiontype_id
        when 0 
          positions[:small_blind] +=1 
          positions[:sbvpip] +=1 if hand.didvpip
        when 1
          positions[:big_blind] +=1
          positions[:bbvpip] +=1 if hand.didvpip
        when 2 
          positions[:utg] +=1
          positions[:utgvpip] +=1 if hand.didvpip
        when 3
          positions[:utg1] +=1
          positions[:utg1vpip] +=1 if hand.didvpip
        when 4
          positions[:co] +=1
          positions[:covpip] +=1 if hand.didvpip
        when 5
          positions[:btn] +=1
          positions[:btnvpip] +=1 if hand.didvpip
        end
      end
      positions
    end


  def self.winnings_by_position
    positions = Handhistory.select("positiontype_id, sum(netamountwon) as winnings").group("positiontype_id").where("numberofplayers!=2")
    positions.sort_by! { |pos| pos.positiontype_id}
    positions.map { |p| p.winnings.to_i/100 }
  end
  
  def self.group_hands(date_type)
    Handhistory.select("#{date_type}, sum(bbwon) as winnings").group("#{date_type}") 
  end

  def self.winnings_percent(group)
    times_winning = group.select{ |item| item.winnings.to_i > 0}.count
    times_losing = group.select { |item| item.winnings.to_i <0 }.count
 
    winning_percent = (times_winning*100)/((times_losing+times_winning))
  end

  def self.biggest_losers(num)
    Handhistory.select("holecardvalue_id, sum(netamountwon) as winnings").group("holecardvalue_id").
    sort{ |a, b| a.winnings.to_i <=> b.winnings.to_i}.
    take(num).map do |h| 
      # holecard = h.hand.holecard_id
      h.winnings.to_i/100
    end
  end

  def heads_up?
    true if self.numberofplayers ==2
  end
end