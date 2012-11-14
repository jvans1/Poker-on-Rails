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

cashgame_ids = Gametype.find_all_by_istourney(false).map{ |g| g.id}

Hand.all.each do |h|
  if hand =  Handhistory.find_all_by_holecardvalue_id(h.id)
    h.count = hand.select{|aa| cashgame_ids.include?(aa.gametype_id)}.count 
    h.save
  end
end




