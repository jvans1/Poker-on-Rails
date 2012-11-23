class Gametype < ActiveRecord::Base
  #attr_accessor :istourney, :bigblind, :smallblind
  #bigblind and small blind are actually total buy in

  set_primary_key "gametype_id"
  has_many :handhistories 
end