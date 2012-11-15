# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Hand.all.each do |h|
#    Stat.create(:hand => h.holecardstring.strip)
# end

# cashgame_ids = Gametype.find_all_by_istourney(false).map{ |g| g.id}

# Hand.all.each do |h| 
#   h.count = Handhistory.find_all_by_holecardvalue_id(h.id).select{|aa| cashgame_ids.include?(aa.gametype_id)}.count 
#   h.save
# end

# aces_winnings = Handhistory.find_all_by_holecardvalue_id(1).map{|h| h.netamountwon} 

# aces_winnings.sum
# Hand.all.select{ |h| h.colecard_id <170 }.map { |a| a.winnings }.sum
# Hand.all.each do |h|

Hand.all.each do |h|
    hand_winnings = Handhistory.find_all_by_holecardvalue_id(h.id).map do |a|
      if a.netamountwon.nil?
        0
      else
        a.netamountwon
      end
    end
      h.winnings = hand_winnings.sum/100 
      h.save
end

# winnings = []
# Handhistory.find_each(:batch_size=> 500000) do |hand|
#   winnings.push(hand.netamountwon)
# end

# hand_winnings = Handhistory.find_all_by_holecardvalue_id(5).map{|h|h.netamountwon}.sum/100