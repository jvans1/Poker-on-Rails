class Gametype < ActiveRecord::Base
  #attr_accessor :istourney, :bigblind, :smallblind
  #bigblind and small blind are actually total buy in

  set_primary_key "gametype_id"
  # attr_accessible :title, :body
  has_many :handhistories, :class_name => "Handhistory", :foreign_key => "gametype_id"
end
