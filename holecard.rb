require 'postgres'
class Holecard < ActiveRecord::Base
  #attr_accessor :holecardstring
  set_primary_key "holecard_id"
  belongs_to :playerhandscashkeycolumns_hero, :class_name => "Playerhandscashkeycolumns_hero", :foreign_key => "holecardvalue_id"
end
