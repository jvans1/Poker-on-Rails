class Handhistory < ActiveRecord::Base
  set_table_name "playerhandscashkeycolumns_hero"
  set_primary_key :pokerhand_id

  belongs_to :gametype

  has_one :hand, :class_name => "Hand", :foreign_key => "holecardvalue_id"

  



  def self.winnings_over_days
    winnings_per_day = Handhistory.select("day, sum(bbwon) as winnings").group("day").order("day").map{|h| h.winnings.to_i/100.0}
    accumulated_winnings_day = winnings_per_day.each_with_index.map{|n, index| winnings_per_day.take(index+1).sum}
  end

  def self.winnings_by_day(date)
    date_type = Handhistory.select("day, sum(bbwon) as winnings").group(date) 
    date_type.map{|y| y.winnings.to_i/100}
  end


  def self.vpip_by_position
    (filter = "off")
    positions ={:small_blind=>0, :big_blind =>0, :utg=>0, :utg1=>0, :co =>0, :btn =>0, :sbvpip=>0, :bbvpip=>0, :utgvpip=>0, :utg1vpip=>0, :covpip=>0, :btnvpip=>0}
    vpip = Handhistory.select("positiontype_id, numberofplayers, didvpip")
    vpip.each do |hand|
      next if filter.downcase == "on" && hand.heads_up?
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
      puts positions[:sbvpip].to_f/positions[:small_blind].to_f
      puts positions[:bbvpip].to_f/positions[:big_blind].to_f
      puts positions[:utgvpip].to_f/positions[:utg].to_f
      puts positions[:utg1vpip].to_f/positions[:utg1].to_f
      puts positions[:covpip].to_f/positions[:co].to_f
      puts positions[:btnvpip].to_f/positions[:btn].to_f
    end
  def self.winnings_by_position
    positions = Handhistory.select("positiontype_id, sum(bbwon) as winnings").group("positiontype_id")
    positions.sort_by! { |pos| pos.positiontype_id}
    positions.map { |p| p.winnings.to_i/100 }
  end


  def self.winnings_percent(group)
    winning  = 0
    losing = 0
    group.each do |item|
      if item.winnings.to_i>0
        winning +=1
      elsif item.winnings.to_i <0
        losing +=1
      end
    end
    winning_percent = (winning*100)/((losing+winning))
  end

  def self.group_hands(date_type)
    Handhistory.select("#{date_type}, sum(bbwon) as winnings").group("#{date_type}") 
  end

  def pre_black_friday?
    true if self.year < 2011 || (self.month <5 && self.year ==2011)
  end
  def heads_up?
    true if self.numberofplayers ==2
  end
end