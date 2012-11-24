class Gametype < ActiveRecord::Base
  set_primary_key "gametype_id"
  has_many :handhistories 
  
end