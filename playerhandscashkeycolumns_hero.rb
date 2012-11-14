

class Playerhandscashkeycolumns_hero < ActiveRecord::Base
  #attr_accessor :handtimestamp, :positiontype_id, :holecardvalue_id, :netamountwon
  def connect(db, user, pw)
    PGconn.new('localhost', 5432, '', '', poker2, jvannem, "") 
  end

  set_table_name "playerhandscashkeycolumns_hero"
  set_primary_keys :pokerhand_id :playerhand_id
  ## belongs_to :pokerhands_hero :key => pokerhand_id
  ## belongs _to :playerhandscashmisc_hero :key => playerhand_id  
        ##playerhandscashmisc_hero has column is hero
  has_one :gametype, :class_name => "gametype", :foreign_key => "gametype_id"
  has_one :holecard, :class_name => "holecard", :foreign_key => "holecardvalue_id"
end

Playerhandscashkeycolumns_hero.establish_connection ""