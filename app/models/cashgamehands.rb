class Cashgamehands < ActiveRecord::Base
  #attr_accessor :handtimestamp, :positiontype_id, :holecardvalue_id, :netamountwon
  set_table_name "playerhandscashkeycolumns_hero"
  set_primary_keys :pokerhand_id :playerhand_id
  ## belongs_to :pokerhands_hero :key => pokerhand_id
  ## belongs _to :playerhandscashmisc_hero :key => playerhand_id  
        ##playerhandscashmisc_hero has column is hero
  has_one :gametype, :class_name => "gametype", :foreign_key => "gametype_id"
  has_one :holecard, :class_name => "holecard", :foreign_key => "holecardvalue_id"
end
end
