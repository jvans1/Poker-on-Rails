class Handhistory < ActiveRecord::Base
  #attr_accessor :handtimestamp, :positiontype_id, :holecardvalue_id, :netamountwon
  set_table_name "playerhandscashkeycolumns_hero"
  set_primary_key :pokerhand_id
  has_one :hand, :class_name => "Hand", :foreign_key => "holecardvalue_id"
  WINNING_GROUPS ={:winning_hands=>0, :hands=>0, :winning_days=>0 , :days =>0,
                  :winning_months=>0, :months=>0, :winning_years=>0, :years=>0}
  DATE_INDEX={:year=> 0, :month=>1, :day=>2}
  # def self.group_by_type(date)
  #   case date 
  #   when "year"
  #    type = "year"
  #   when "month"
  #    type = "year, month"
  #   when "day"
  #    type = "day"
  #   end
  #     dates = type.split(',')
  #     date_type = Handhistory.select("#{type}, sum(netamountwon) as winnings").group("#{type}") 
  #     date_type.map{|y| y.winnings.to_i}.sum 
  #     date_type.each do |d|
  #       dates.each do |dt|
  #       puts d.send(DATE_INDEX[:year]).to_s + ": " + (d.winnings.to_i/100).to_s if dates.length ==1
  #       puts "Year: " + d.send(DATE_INDEX[:year]).to_s + " Month: " +d.send(DATE_INDEX[:month]) if dates.length ==2
  #       puts "Year: " + d.send(DATE_INDEX[:year]).to_s + " Month: " +d.send(DATE_INDEX[:month])+" Day: "+ d.send(DATE_INDEX[:day]) if dates.length ==3
  #     end
  #   end
  # end

  def self.find_winnings_group(date_type)
    Handhistory.select("#{date_type}, sum(netamountwon) as winnings").group("#{date_type}") 
  end
  def self.winnings_percent(type)
    winning  = 0
    losing = 0

    group.each do |unit|
      if unit.winnings.to_i>0
        winning +=1
      elsif unit.winnings.to_i <0
        losing +=1
      end
    end
    puts "winning" +  winning.to_s+ " losing " +  losing.to_s
    winning_percent = (winning*100)/((losing+winning))
    puts "I have won  #{winning_percent} percent of #{type}s"
  end
end
