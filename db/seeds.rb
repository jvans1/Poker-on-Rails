# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def convert_to_big_blind(netamountwon, bb)
  netamountwon/bb 
end

def bigblind(id)
  Gametype.find_by_gametype_id(id).bigblind  
end


#cashgame_ids = Gametype.find_all_by_istourney(false).map{ |g| g.id}

# aces_winnings = Handhistory.find_all_by_holecardvalue_id(1).map{|h| h.netamountwon} 

# aces_winnings.sum
# Hand.all.select{ |h| h.colecard_id <170 }.map { |a| a.winnings }.sum

def add_bbwinnings_to_hand_table
  Hand.all.each do |h|
    hand_winnings = Handhistory.find_all_by_holecardvalue_id(h.id).map do |a|
      if a.bbwon.nil?
        0
      else
        a.bbwon
      end
    end
  h.bbwinings = hand_winnings.sum 
  h.save
  end
end

def add_winnings_to_hand_table
  Hand.all.each do |h|
    hand_winnings = Handhistory.find_all_by_holecardvalue_id(h.id).map do |a|
      if a.netamountwon.nil?
        0
      else
        a.netamountwon
      end
    end
  h.winnings = hand_winnings.sum 
  h.save
  end
end

def add_evbb_to_hand_table
  Hand.all.each do |h|
    hand_winnings = Handhistory.find_all_by_holecardvalue_id(h.id).map do |a|
      if a.evbb.nil?
        0
      else
        a.bbwon 
      end
    end
  h.evbb = hand_winnings.sum 
  h.save
  end
end

# hand_winnings = Handhistory.find_all_by_holecardvalue_id(5).map{|h|h.netamountwon}.sum/100


def convert_netamountwon_to_big_blinds
  Handhistory.find_each(:batch_size=> 100000) do |hand|
    gametype_id = hand.gametype_id
    bb = bigblind(gametype_id)
    hand.bbwon = convert_to_big_blind(hand.netamountwon*100, bb)
    hand.save 
  end
end

#calc winnings per hand in ev
def set_evbb_column_in_handhistories
  all_in_hands = Allin.all.map{|h| [h.playerhand_id, h.equitypct] }
  all_in_hands.each do |id, equitypct|
    hand = Handhistory.find_by_playerhand_id(id)
    hand.evbb = calc_ev_per_hand(hand.bbwon, equitypct) unless hand.nil?
    hand.save unless  hand.nil?
  end
end
def fill_nill_rows_in_evbb_column
  Handhistory.find_each(:batch_size=> 50000)do |hand|
    if hand.evbb.nil?
      hand.evbb = hand.bbwon
      hand.save 
    end
  end
end

def fill_nill_rows_in_bbwinings_column_in_holecards
  Hand.all.each do |hand|
    if hand.evbb == 0
      hand.evbb = hand.bbwinings/100
      hand.save
    end
  end
end
def calc_ev_per_hand(bbwon, eqt)
    ev = bbwon*eqt - bbwon*(1000-eqt)
    ev/1000
end
def all_in_before_river?(hand)
  hand.streetwentallin < 4 && hand.streetwentallin >0
end


#Breakup Day/month/year into 3 columns --? Has to be a better way...
def add_day_month_year_columns
  Handhistory.find_each(:batch_size=>150000) do |hand|
    hand.day = hand.handtimestamp.day
    hand.month = hand.handtimestamp.month
    hand.year = hand.handtimestamp.year
    hand.save
  end
end

def handtimestamp_to_date
  Handhistory.find_each(:batch_size=> 100000) do |hand|
    hand.day = hand.handtimestamp.to_date 
    hand.save
  end
end


