class Pokerhands_hero
  #attr_accessor :handtimestamp, :gametype_id, #riverhighcard_id??
  set_table_name 'pokerhands_hero'
  set_primary_key 'pokerhand_id'
  has_one :gametype 

end
