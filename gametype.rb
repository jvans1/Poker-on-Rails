class Gametype
  attr_accessor :istourney, :bigblind, :smallblind
  #bigblind and small blind are actually total buy in

  set_primary_key "gametype_id"
  belongs_to :pokerhands_hero, :class_name => "Pokerhands_hero", :foreign_key => "gametype_id"
  belongs_to :playerhandscashkeycolumns_hero, :name => "playerhandscashkeycolumns_hero", :foreign_key=> :gametype_id
end
