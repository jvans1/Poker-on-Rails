# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121115024245) do

  create_table "actiontypes", :id => false, :force => true do |t|
    t.integer "actiontype_id",              :null => false
    t.string  "actionstring",  :limit => 6
  end

  create_table "aliases", :id => false, :force => true do |t|
    t.integer "aliasplayer_id", :null => false
    t.integer "player_id",      :null => false
  end

  add_index "aliases", ["aliasplayer_id"], :name => "aliases_idx1"

  create_table "allinsituations", :id => false, :force => true do |t|
    t.integer "playerhand_id",              :null => false
    t.integer "equitypct",     :limit => 2, :null => false
    t.integer "sklanskybucks",              :null => false
  end

  create_table "allinsituations_hero", :id => false, :force => true do |t|
    t.integer "playerhand_id",              :null => false
    t.integer "equitypct",     :limit => 2, :null => false
    t.integer "sklanskybucks",              :null => false
  end

  create_table "bonuses", :primary_key => "bonus_id", :force => true do |t|
    t.text     "description"
    t.integer  "player_id",                                  :null => false
    t.integer  "bonusamount",                                :null => false
    t.datetime "bonustimestamp"
    t.integer  "currency_id",    :limit => 2, :default => 1
  end

  add_index "bonuses", ["player_id"], :name => "bonuses_idx1"

  create_table "compiledplayerresults", :id => false, :force => true do |t|
    t.integer "compiledplayerresults_id",                        :null => false
    t.integer "totalhands",                         :limit => 2, :null => false
    t.integer "totalamountwon",                                  :null => false
    t.integer "totalrake",                                       :null => false
    t.float   "totalbbswon",                                     :null => false
    t.integer "vpiphands",                          :limit => 2, :null => false
    t.integer "pfrhands",                           :limit => 2, :null => false
    t.integer "couldcoldcall",                      :limit => 2, :null => false
    t.integer "didcoldcall",                        :limit => 2, :null => false
    t.integer "couldthreebet",                      :limit => 2, :null => false
    t.integer "didthreebet",                        :limit => 2, :null => false
    t.integer "couldsqueeze",                       :limit => 2, :null => false
    t.integer "didsqueeze",                         :limit => 2, :null => false
    t.integer "facingtwopreflopraisers",            :limit => 2, :null => false
    t.integer "calledtwopreflopraisers",            :limit => 2, :null => false
    t.integer "raisedtwopreflopraisers",            :limit => 2, :null => false
    t.integer "smallblindstealattempted",           :limit => 2, :null => false
    t.integer "smallblindstealdefended",            :limit => 2, :null => false
    t.integer "smallblindstealreraised",            :limit => 2, :null => false
    t.integer "bigblindstealattempted",             :limit => 2, :null => false
    t.integer "bigblindstealdefended",              :limit => 2, :null => false
    t.integer "bigblindstealreraised",              :limit => 2, :null => false
    t.integer "sawnonsmallshowdown",                :limit => 2, :null => false
    t.integer "wonnonsmallshowdown",                :limit => 2, :null => false
    t.integer "sawlargeshowdown",                   :limit => 2, :null => false
    t.integer "wonlargeshowdown",                   :limit => 2, :null => false
    t.integer "sawnonsmallshowdownlimpedflop",      :limit => 2, :null => false
    t.integer "wonnonsmallshowdownlimpedflop",      :limit => 2, :null => false
    t.integer "sawlargeshowdownlimpedflop",         :limit => 2, :null => false
    t.integer "wonlargeshowdownlimpedflop",         :limit => 2, :null => false
    t.integer "wonhand",                            :limit => 2, :null => false
    t.integer "wonhandwhensawflop",                 :limit => 2, :null => false
    t.integer "wonhandwhensawturn",                 :limit => 2, :null => false
    t.integer "wonhandwhensawriver",                :limit => 2, :null => false
    t.integer "facedthreebetpreflop",               :limit => 2, :null => false
    t.integer "foldedtothreebetpreflop",            :limit => 2, :null => false
    t.integer "calledthreebetpreflop",              :limit => 2, :null => false
    t.integer "raisedthreebetpreflop",              :limit => 2, :null => false
    t.integer "facedfourbetpreflop",                :limit => 2, :null => false
    t.integer "foldedtofourbetpreflop",             :limit => 2, :null => false
    t.integer "calledfourbetpreflop",               :limit => 2, :null => false
    t.integer "raisedfourbetpreflop",               :limit => 2, :null => false
    t.integer "bigbetpreflopsawshowdown",           :limit => 2, :null => false
    t.integer "bigbetflopsawshowdown",              :limit => 2, :null => false
    t.integer "bigbetturnsawshowdown",              :limit => 2, :null => false
    t.integer "bigbetriversawshowdown",             :limit => 2, :null => false
    t.integer "bigcallpreflopsawshowdown",          :limit => 2, :null => false
    t.integer "bigcallflopsawshowdown",             :limit => 2, :null => false
    t.integer "bigcallturnsawshowdown",             :limit => 2, :null => false
    t.integer "bigcallriversawshowdown",            :limit => 2, :null => false
    t.integer "bigbetpreflopwonshowdown",           :limit => 2, :null => false
    t.integer "bigbetflopwonshowdown",              :limit => 2, :null => false
    t.integer "bigbetturnwonshowdown",              :limit => 2, :null => false
    t.integer "bigbetriverwonshowdown",             :limit => 2, :null => false
    t.integer "bigcallpreflopwonshowdown",          :limit => 2, :null => false
    t.integer "bigcallflopwonshowdown",             :limit => 2, :null => false
    t.integer "bigcallturnwonshowdown",             :limit => 2, :null => false
    t.integer "bigcallriverwonshowdown",            :limit => 2, :null => false
    t.integer "turnfoldippassonflopcb",             :limit => 2, :null => false
    t.integer "turncallippassonflopcb",             :limit => 2, :null => false
    t.integer "turnraiseippassonflopcb",            :limit => 2, :null => false
    t.integer "riverfoldippassonturncb",            :limit => 2, :null => false
    t.integer "rivercallippassonturncb",            :limit => 2, :null => false
    t.integer "riverraiseippassonturncb",           :limit => 2, :null => false
    t.integer "sawflop",                            :limit => 2, :null => false
    t.integer "sawshowdown",                        :limit => 2, :null => false
    t.integer "wonshowdown",                        :limit => 2, :null => false
    t.integer "totalbets",                          :limit => 2, :null => false
    t.integer "totalcalls",                         :limit => 2, :null => false
    t.integer "flopcontinuationbetpossible",        :limit => 2, :null => false
    t.integer "flopcontinuationbetmade",            :limit => 2, :null => false
    t.integer "turncontinuationbetpossible",        :limit => 2, :null => false
    t.integer "turncontinuationbetmade",            :limit => 2, :null => false
    t.integer "rivercontinuationbetpossible",       :limit => 2, :null => false
    t.integer "rivercontinuationbetmade",           :limit => 2, :null => false
    t.integer "facingflopcontinuationbet",          :limit => 2, :null => false
    t.integer "foldedtoflopcontinuationbet",        :limit => 2, :null => false
    t.integer "calledflopcontinuationbet",          :limit => 2, :null => false
    t.integer "raisedflopcontinuationbet",          :limit => 2, :null => false
    t.integer "facingturncontinuationbet",          :limit => 2, :null => false
    t.integer "foldedtoturncontinuationbet",        :limit => 2, :null => false
    t.integer "calledturncontinuationbet",          :limit => 2, :null => false
    t.integer "raisedturncontinuationbet",          :limit => 2, :null => false
    t.integer "facingrivercontinuationbet",         :limit => 2, :null => false
    t.integer "foldedtorivercontinuationbet",       :limit => 2, :null => false
    t.integer "calledrivercontinuationbet",         :limit => 2, :null => false
    t.integer "raisedrivercontinuationbet",         :limit => 2, :null => false
    t.integer "totalpostflopstreetsseen",           :limit => 2, :null => false
    t.integer "totalaggressivepostflopstreetsseen", :limit => 2, :null => false
  end

  add_index "compiledplayerresults", ["compiledplayerresults_id"], :name => "compiledplayerresults_idx1", :unique => true

  create_table "compiledplayerresults_month", :id => false, :force => true do |t|
    t.integer "compiledplayerresults_id",           :null => false
    t.integer "totalhands",                         :null => false
    t.integer "totalamountwon",                     :null => false
    t.integer "totalrake",                          :null => false
    t.float   "totalbbswon",                        :null => false
    t.integer "vpiphands",                          :null => false
    t.integer "pfrhands",                           :null => false
    t.integer "couldcoldcall",                      :null => false
    t.integer "didcoldcall",                        :null => false
    t.integer "couldthreebet",                      :null => false
    t.integer "didthreebet",                        :null => false
    t.integer "couldsqueeze",                       :null => false
    t.integer "didsqueeze",                         :null => false
    t.integer "facingtwopreflopraisers",            :null => false
    t.integer "calledtwopreflopraisers",            :null => false
    t.integer "raisedtwopreflopraisers",            :null => false
    t.integer "smallblindstealattempted",           :null => false
    t.integer "smallblindstealdefended",            :null => false
    t.integer "smallblindstealreraised",            :null => false
    t.integer "bigblindstealattempted",             :null => false
    t.integer "bigblindstealdefended",              :null => false
    t.integer "bigblindstealreraised",              :null => false
    t.integer "sawnonsmallshowdown",                :null => false
    t.integer "wonnonsmallshowdown",                :null => false
    t.integer "sawlargeshowdown",                   :null => false
    t.integer "wonlargeshowdown",                   :null => false
    t.integer "sawnonsmallshowdownlimpedflop",      :null => false
    t.integer "wonnonsmallshowdownlimpedflop",      :null => false
    t.integer "sawlargeshowdownlimpedflop",         :null => false
    t.integer "wonlargeshowdownlimpedflop",         :null => false
    t.integer "wonhand",                            :null => false
    t.integer "wonhandwhensawflop",                 :null => false
    t.integer "wonhandwhensawturn",                 :null => false
    t.integer "wonhandwhensawriver",                :null => false
    t.integer "facedthreebetpreflop",               :null => false
    t.integer "foldedtothreebetpreflop",            :null => false
    t.integer "calledthreebetpreflop",              :null => false
    t.integer "raisedthreebetpreflop",              :null => false
    t.integer "facedfourbetpreflop",                :null => false
    t.integer "foldedtofourbetpreflop",             :null => false
    t.integer "calledfourbetpreflop",               :null => false
    t.integer "raisedfourbetpreflop",               :null => false
    t.integer "bigbetpreflopsawshowdown",           :null => false
    t.integer "bigbetflopsawshowdown",              :null => false
    t.integer "bigbetturnsawshowdown",              :null => false
    t.integer "bigbetriversawshowdown",             :null => false
    t.integer "bigcallpreflopsawshowdown",          :null => false
    t.integer "bigcallflopsawshowdown",             :null => false
    t.integer "bigcallturnsawshowdown",             :null => false
    t.integer "bigcallriversawshowdown",            :null => false
    t.integer "bigbetpreflopwonshowdown",           :null => false
    t.integer "bigbetflopwonshowdown",              :null => false
    t.integer "bigbetturnwonshowdown",              :null => false
    t.integer "bigbetriverwonshowdown",             :null => false
    t.integer "bigcallpreflopwonshowdown",          :null => false
    t.integer "bigcallflopwonshowdown",             :null => false
    t.integer "bigcallturnwonshowdown",             :null => false
    t.integer "bigcallriverwonshowdown",            :null => false
    t.integer "turnfoldippassonflopcb",             :null => false
    t.integer "turncallippassonflopcb",             :null => false
    t.integer "turnraiseippassonflopcb",            :null => false
    t.integer "riverfoldippassonturncb",            :null => false
    t.integer "rivercallippassonturncb",            :null => false
    t.integer "riverraiseippassonturncb",           :null => false
    t.integer "sawflop",                            :null => false
    t.integer "sawshowdown",                        :null => false
    t.integer "wonshowdown",                        :null => false
    t.integer "totalbets",                          :null => false
    t.integer "totalcalls",                         :null => false
    t.integer "flopcontinuationbetpossible",        :null => false
    t.integer "flopcontinuationbetmade",            :null => false
    t.integer "turncontinuationbetpossible",        :null => false
    t.integer "turncontinuationbetmade",            :null => false
    t.integer "rivercontinuationbetpossible",       :null => false
    t.integer "rivercontinuationbetmade",           :null => false
    t.integer "facingflopcontinuationbet",          :null => false
    t.integer "foldedtoflopcontinuationbet",        :null => false
    t.integer "calledflopcontinuationbet",          :null => false
    t.integer "raisedflopcontinuationbet",          :null => false
    t.integer "facingturncontinuationbet",          :null => false
    t.integer "foldedtoturncontinuationbet",        :null => false
    t.integer "calledturncontinuationbet",          :null => false
    t.integer "raisedturncontinuationbet",          :null => false
    t.integer "facingrivercontinuationbet",         :null => false
    t.integer "foldedtorivercontinuationbet",       :null => false
    t.integer "calledrivercontinuationbet",         :null => false
    t.integer "raisedrivercontinuationbet",         :null => false
    t.integer "totalpostflopstreetsseen",           :null => false
    t.integer "totalaggressivepostflopstreetsseen", :null => false
    t.integer "vs_ep_raise_ip_fold"
    t.integer "vs_ep_raise_ip_call"
    t.integer "vs_ep_raise_ip_raise"
    t.integer "vs_mp_raise_ip_fold"
    t.integer "vs_mp_raise_ip_call"
    t.integer "vs_mp_raise_ip_raise"
    t.integer "vs_co_raise_ip_fold"
    t.integer "vs_co_raise_ip_call"
    t.integer "vs_co_raise_ip_raise"
    t.integer "vs_sb_raise_ip_fold"
    t.integer "vs_sb_raise_ip_call"
    t.integer "vs_sb_raise_ip_raise"
    t.integer "vs_ep_raise_oop_fold"
    t.integer "vs_ep_raise_oop_call"
    t.integer "vs_ep_raise_oop_raise"
    t.integer "vs_mp_raise_oop_fold"
    t.integer "vs_mp_raise_oop_call"
    t.integer "vs_mp_raise_oop_raise"
    t.integer "vs_co_raise_oop_fold"
    t.integer "vs_co_raise_oop_call"
    t.integer "vs_co_raise_oop_raise"
    t.integer "vs_bt_raise_oop_fold"
    t.integer "vs_bt_raise_oop_call"
    t.integer "vs_bt_raise_oop_raise"
    t.integer "ep_vs_raise_ip_fold"
    t.integer "ep_vs_raise_ip_call"
    t.integer "ep_vs_raise_ip_raise"
    t.integer "ep_vs_raise_oop_fold"
    t.integer "ep_vs_raise_oop_call"
    t.integer "ep_vs_raise_oop_raise"
    t.integer "mp_vs_raise_ip_fold"
    t.integer "mp_vs_raise_ip_call"
    t.integer "mp_vs_raise_ip_raise"
    t.integer "mp_vs_raise_oop_fold"
    t.integer "mp_vs_raise_oop_call"
    t.integer "mp_vs_raise_oop_raise"
    t.integer "co_vs_raise_ip_fold"
    t.integer "co_vs_raise_ip_call"
    t.integer "co_vs_raise_ip_raise"
    t.integer "co_vs_raise_oop_fold"
    t.integer "co_vs_raise_oop_call"
    t.integer "co_vs_raise_oop_raise"
    t.integer "bt_vs_raise_oop_fold"
    t.integer "bt_vs_raise_oop_call"
    t.integer "bt_vs_raise_oop_raise"
    t.integer "sb_vs_raise_ip_fold"
    t.integer "sb_vs_raise_ip_call"
    t.integer "sb_vs_raise_ip_raise"
    t.integer "facingsqueezeascaller"
    t.integer "foldtosqueezeascaller"
    t.integer "facingsqueezeasfirstraiser"
    t.integer "foldtosqueezeasfirstraiser"
    t.integer "bbfacingsbcompletion"
    t.integer "bbraisesbcompletion"
    t.integer "facingflopcheckraise"
    t.integer "foldtoflopcheckraise"
    t.integer "facingturncheckraise"
    t.integer "foldtoturncheckraise"
    t.integer "facingrivercheckraise"
    t.integer "foldtorivercheckraise"
    t.integer "facingflopcbetip"
    t.integer "foldtoflopcbetip"
    t.integer "raiseflopcbetip"
    t.integer "callflopcbetip"
    t.integer "facingturncbetip"
    t.integer "foldtoturncbetip"
    t.integer "raiseturncbetip"
    t.integer "callturncbetip"
    t.integer "facingrivercbetip"
    t.integer "foldtorivercbetip"
    t.integer "raiserivercbetip"
    t.integer "callrivercbetip"
    t.integer "facingflopcbetoop"
    t.integer "foldtoflopcbetoop"
    t.integer "raiseflopcbetoop"
    t.integer "callflopcbetoop"
    t.integer "facingturncbetoop"
    t.integer "foldtoturncbetoop"
    t.integer "raiseturncbetoop"
    t.integer "callturncbetoop"
    t.integer "facingrivercbetoop"
    t.integer "foldtorivercbetoop"
    t.integer "raiserivercbetoop"
    t.integer "callrivercbetoop"
    t.integer "cbetflopip"
    t.integer "couldcbetflopip"
    t.integer "cbetturnip"
    t.integer "couldcbetturnip"
    t.integer "cbetriverip"
    t.integer "couldcbetriverip"
    t.integer "cbetflopoop"
    t.integer "couldcbetflopoop"
    t.integer "cbetturnoop"
    t.integer "couldcbetturnoop"
    t.integer "cbetriveroop"
    t.integer "couldcbetriveroop"
    t.integer "bbfacingsbsteal"
    t.integer "bbfoldtosbsteal"
    t.integer "bbraisesbsteal"
    t.integer "bbcallsbsteal"
    t.integer "bbfacingbtnsteal"
    t.integer "bbfoldtobtnsteal"
    t.integer "bbraisebtnsteal"
    t.integer "bbcallbtnsteal"
    t.integer "bbfacingcosteal"
    t.integer "bbfoldtocosteal"
    t.integer "bbraisecosteal"
    t.integer "bbcallcosteal"
    t.integer "facedfivebetpreflop"
    t.integer "foldedtofivebetpreflop"
    t.integer "calledfivebetpreflop"
    t.integer "raisedfivebetpreflop"
  end

  add_index "compiledplayerresults_month", ["compiledplayerresults_id"], :name => "compiledplayerresults_month_idx1", :unique => true

  create_table "compiledplayerresultspositionaction", :id => false, :force => true do |t|
    t.integer "compiledplayerresults_id",                      :null => false
    t.integer "earlyuohands",                     :limit => 2, :null => false
    t.integer "earlyuovpip",                      :limit => 2, :null => false
    t.integer "earlyuopfr",                       :limit => 2, :null => false
    t.integer "middleuohands",                    :limit => 2, :null => false
    t.integer "middleuovpip",                     :limit => 2, :null => false
    t.integer "middleuopfr",                      :limit => 2, :null => false
    t.integer "cutoffuohands",                    :limit => 2, :null => false
    t.integer "cutoffuovpip",                     :limit => 2, :null => false
    t.integer "cutoffuopfr",                      :limit => 2, :null => false
    t.integer "buttonuohands",                    :limit => 2, :null => false
    t.integer "buttonuovpip",                     :limit => 2, :null => false
    t.integer "buttonuopfr",                      :limit => 2, :null => false
    t.integer "smallblinduohands",                :limit => 2, :null => false
    t.integer "smallblinduovpip",                 :limit => 2, :null => false
    t.integer "smallblinduopfr",                  :limit => 2, :null => false
    t.integer "bigblinduohands",                  :limit => 2, :null => false
    t.integer "bigblinduovpip",                   :limit => 2, :null => false
    t.integer "bigblinduopfr",                    :limit => 2, :null => false
    t.integer "early1limperhands",                :limit => 2, :null => false
    t.integer "early1limpervpip",                 :limit => 2, :null => false
    t.integer "early1limperpfr",                  :limit => 2, :null => false
    t.integer "middle1limperhands",               :limit => 2, :null => false
    t.integer "middle1limpervpip",                :limit => 2, :null => false
    t.integer "middle1limperpfr",                 :limit => 2, :null => false
    t.integer "cutoff1limperhands",               :limit => 2, :null => false
    t.integer "cutoff1limpervpip",                :limit => 2, :null => false
    t.integer "cutoff1limperpfr",                 :limit => 2, :null => false
    t.integer "button1limperhands",               :limit => 2, :null => false
    t.integer "button1limpervpip",                :limit => 2, :null => false
    t.integer "button1limperpfr",                 :limit => 2, :null => false
    t.integer "smallblind1limperhands",           :limit => 2, :null => false
    t.integer "smallblind1limpervpip",            :limit => 2, :null => false
    t.integer "smallblind1limperpfr",             :limit => 2, :null => false
    t.integer "bigblind1limperhands",             :limit => 2, :null => false
    t.integer "bigblind1limpervpip",              :limit => 2, :null => false
    t.integer "bigblind1limperpfr",               :limit => 2, :null => false
    t.integer "early2ormorelimpershands",         :limit => 2, :null => false
    t.integer "early2ormorelimpersvpip",          :limit => 2, :null => false
    t.integer "early2ormorelimperspfr",           :limit => 2, :null => false
    t.integer "middle2ormorelimpershands",        :limit => 2, :null => false
    t.integer "middle2ormorelimpersvpip",         :limit => 2, :null => false
    t.integer "middle2ormorelimperspfr",          :limit => 2, :null => false
    t.integer "cutoff2ormorelimpershands",        :limit => 2, :null => false
    t.integer "cutoff2ormorelimpersvpip",         :limit => 2, :null => false
    t.integer "cutoff2ormorelimperspfr",          :limit => 2, :null => false
    t.integer "button2ormorelimpershands",        :limit => 2, :null => false
    t.integer "button2ormorelimpersvpip",         :limit => 2, :null => false
    t.integer "button2ormorelimperspfr",          :limit => 2, :null => false
    t.integer "smallblind2ormorelimpershands",    :limit => 2, :null => false
    t.integer "smallblind2ormorelimpersvpip",     :limit => 2, :null => false
    t.integer "smallblind2ormorelimperspfr",      :limit => 2, :null => false
    t.integer "bigblind2ormorelimpershands",      :limit => 2, :null => false
    t.integer "bigblind2ormorelimpersvpip",       :limit => 2, :null => false
    t.integer "bigblind2ormorelimperspfr",        :limit => 2, :null => false
    t.integer "early1raiserhands",                :limit => 2, :null => false
    t.integer "early1raiservpip",                 :limit => 2, :null => false
    t.integer "early1raiserpfr",                  :limit => 2, :null => false
    t.integer "middle1raiserhands",               :limit => 2, :null => false
    t.integer "middle1raiservpip",                :limit => 2, :null => false
    t.integer "middle1raiserpfr",                 :limit => 2, :null => false
    t.integer "cutoff1raiserhands",               :limit => 2, :null => false
    t.integer "cutoff1raiservpip",                :limit => 2, :null => false
    t.integer "cutoff1raiserpfr",                 :limit => 2, :null => false
    t.integer "button1raiserhands",               :limit => 2, :null => false
    t.integer "button1raiservpip",                :limit => 2, :null => false
    t.integer "button1raiserpfr",                 :limit => 2, :null => false
    t.integer "smallblind1raiserhands",           :limit => 2, :null => false
    t.integer "smallblind1raiservpip",            :limit => 2, :null => false
    t.integer "smallblind1raiserpfr",             :limit => 2, :null => false
    t.integer "bigblind1raiserhands",             :limit => 2, :null => false
    t.integer "bigblind1raiservpip",              :limit => 2, :null => false
    t.integer "bigblind1raiserpfr",               :limit => 2, :null => false
    t.integer "early1raiserpluscallerhands",      :limit => 2, :null => false
    t.integer "early1raiserpluscallervpip",       :limit => 2, :null => false
    t.integer "early1raiserpluscallerpfr",        :limit => 2, :null => false
    t.integer "middle1raiserpluscallerhands",     :limit => 2, :null => false
    t.integer "middle1raiserpluscallervpip",      :limit => 2, :null => false
    t.integer "middle1raiserpluscallerpfr",       :limit => 2, :null => false
    t.integer "cutoff1raiserpluscallerhands",     :limit => 2, :null => false
    t.integer "cutoff1raiserpluscallervpip",      :limit => 2, :null => false
    t.integer "cutoff1raiserpluscallerpfr",       :limit => 2, :null => false
    t.integer "button1raiserpluscallerhands",     :limit => 2, :null => false
    t.integer "button1raiserpluscallervpip",      :limit => 2, :null => false
    t.integer "button1raiserpluscallerpfr",       :limit => 2, :null => false
    t.integer "smallblind1raiserpluscallerhands", :limit => 2, :null => false
    t.integer "smallblind1raiserpluscallervpip",  :limit => 2, :null => false
    t.integer "smallblind1raiserpluscallerpfr",   :limit => 2, :null => false
    t.integer "bigblind1raiserpluscallerhands",   :limit => 2, :null => false
    t.integer "bigblind1raiserpluscallervpip",    :limit => 2, :null => false
    t.integer "bigblind1raiserpluscallerpfr",     :limit => 2, :null => false
    t.integer "early2raisershands",               :limit => 2, :null => false
    t.integer "early2raisersvpip",                :limit => 2, :null => false
    t.integer "early2raiserspfr",                 :limit => 2, :null => false
    t.integer "middle2raisershands",              :limit => 2, :null => false
    t.integer "middle2raisersvpip",               :limit => 2, :null => false
    t.integer "middle2raiserspfr",                :limit => 2, :null => false
    t.integer "cutoff2raisershands",              :limit => 2, :null => false
    t.integer "cutoff2raisersvpip",               :limit => 2, :null => false
    t.integer "cutoff2raiserspfr",                :limit => 2, :null => false
    t.integer "button2raisershands",              :limit => 2, :null => false
    t.integer "button2raisersvpip",               :limit => 2, :null => false
    t.integer "button2raiserspfr",                :limit => 2, :null => false
    t.integer "smallblind2raisershands",          :limit => 2, :null => false
    t.integer "smallblind2raisersvpip",           :limit => 2, :null => false
    t.integer "smallblind2raiserspfr",            :limit => 2, :null => false
    t.integer "bigblind2raisershands",            :limit => 2, :null => false
    t.integer "bigblind2raisersvpip",             :limit => 2, :null => false
    t.integer "bigblind2raiserspfr",              :limit => 2, :null => false
  end

  add_index "compiledplayerresultspositionaction", ["compiledplayerresults_id"], :name => "compiledplayerresultspositionaction_idx1", :unique => true

  create_table "compiledplayerresultspositionaction_month", :id => false, :force => true do |t|
    t.integer "compiledplayerresults_id",         :null => false
    t.integer "earlyuohands",                     :null => false
    t.integer "earlyuovpip",                      :null => false
    t.integer "earlyuopfr",                       :null => false
    t.integer "middleuohands",                    :null => false
    t.integer "middleuovpip",                     :null => false
    t.integer "middleuopfr",                      :null => false
    t.integer "cutoffuohands",                    :null => false
    t.integer "cutoffuovpip",                     :null => false
    t.integer "cutoffuopfr",                      :null => false
    t.integer "buttonuohands",                    :null => false
    t.integer "buttonuovpip",                     :null => false
    t.integer "buttonuopfr",                      :null => false
    t.integer "smallblinduohands",                :null => false
    t.integer "smallblinduovpip",                 :null => false
    t.integer "smallblinduopfr",                  :null => false
    t.integer "bigblinduohands",                  :null => false
    t.integer "bigblinduovpip",                   :null => false
    t.integer "bigblinduopfr",                    :null => false
    t.integer "early1limperhands",                :null => false
    t.integer "early1limpervpip",                 :null => false
    t.integer "early1limperpfr",                  :null => false
    t.integer "middle1limperhands",               :null => false
    t.integer "middle1limpervpip",                :null => false
    t.integer "middle1limperpfr",                 :null => false
    t.integer "cutoff1limperhands",               :null => false
    t.integer "cutoff1limpervpip",                :null => false
    t.integer "cutoff1limperpfr",                 :null => false
    t.integer "button1limperhands",               :null => false
    t.integer "button1limpervpip",                :null => false
    t.integer "button1limperpfr",                 :null => false
    t.integer "smallblind1limperhands",           :null => false
    t.integer "smallblind1limpervpip",            :null => false
    t.integer "smallblind1limperpfr",             :null => false
    t.integer "bigblind1limperhands",             :null => false
    t.integer "bigblind1limpervpip",              :null => false
    t.integer "bigblind1limperpfr",               :null => false
    t.integer "early2ormorelimpershands",         :null => false
    t.integer "early2ormorelimpersvpip",          :null => false
    t.integer "early2ormorelimperspfr",           :null => false
    t.integer "middle2ormorelimpershands",        :null => false
    t.integer "middle2ormorelimpersvpip",         :null => false
    t.integer "middle2ormorelimperspfr",          :null => false
    t.integer "cutoff2ormorelimpershands",        :null => false
    t.integer "cutoff2ormorelimpersvpip",         :null => false
    t.integer "cutoff2ormorelimperspfr",          :null => false
    t.integer "button2ormorelimpershands",        :null => false
    t.integer "button2ormorelimpersvpip",         :null => false
    t.integer "button2ormorelimperspfr",          :null => false
    t.integer "smallblind2ormorelimpershands",    :null => false
    t.integer "smallblind2ormorelimpersvpip",     :null => false
    t.integer "smallblind2ormorelimperspfr",      :null => false
    t.integer "bigblind2ormorelimpershands",      :null => false
    t.integer "bigblind2ormorelimpersvpip",       :null => false
    t.integer "bigblind2ormorelimperspfr",        :null => false
    t.integer "early1raiserhands",                :null => false
    t.integer "early1raiservpip",                 :null => false
    t.integer "early1raiserpfr",                  :null => false
    t.integer "middle1raiserhands",               :null => false
    t.integer "middle1raiservpip",                :null => false
    t.integer "middle1raiserpfr",                 :null => false
    t.integer "cutoff1raiserhands",               :null => false
    t.integer "cutoff1raiservpip",                :null => false
    t.integer "cutoff1raiserpfr",                 :null => false
    t.integer "button1raiserhands",               :null => false
    t.integer "button1raiservpip",                :null => false
    t.integer "button1raiserpfr",                 :null => false
    t.integer "smallblind1raiserhands",           :null => false
    t.integer "smallblind1raiservpip",            :null => false
    t.integer "smallblind1raiserpfr",             :null => false
    t.integer "bigblind1raiserhands",             :null => false
    t.integer "bigblind1raiservpip",              :null => false
    t.integer "bigblind1raiserpfr",               :null => false
    t.integer "early1raiserpluscallerhands",      :null => false
    t.integer "early1raiserpluscallervpip",       :null => false
    t.integer "early1raiserpluscallerpfr",        :null => false
    t.integer "middle1raiserpluscallerhands",     :null => false
    t.integer "middle1raiserpluscallervpip",      :null => false
    t.integer "middle1raiserpluscallerpfr",       :null => false
    t.integer "cutoff1raiserpluscallerhands",     :null => false
    t.integer "cutoff1raiserpluscallervpip",      :null => false
    t.integer "cutoff1raiserpluscallerpfr",       :null => false
    t.integer "button1raiserpluscallerhands",     :null => false
    t.integer "button1raiserpluscallervpip",      :null => false
    t.integer "button1raiserpluscallerpfr",       :null => false
    t.integer "smallblind1raiserpluscallerhands", :null => false
    t.integer "smallblind1raiserpluscallervpip",  :null => false
    t.integer "smallblind1raiserpluscallerpfr",   :null => false
    t.integer "bigblind1raiserpluscallerhands",   :null => false
    t.integer "bigblind1raiserpluscallervpip",    :null => false
    t.integer "bigblind1raiserpluscallerpfr",     :null => false
    t.integer "early2raisershands",               :null => false
    t.integer "early2raisersvpip",                :null => false
    t.integer "early2raiserspfr",                 :null => false
    t.integer "middle2raisershands",              :null => false
    t.integer "middle2raisersvpip",               :null => false
    t.integer "middle2raiserspfr",                :null => false
    t.integer "cutoff2raisershands",              :null => false
    t.integer "cutoff2raisersvpip",               :null => false
    t.integer "cutoff2raiserspfr",                :null => false
    t.integer "button2raisershands",              :null => false
    t.integer "button2raisersvpip",               :null => false
    t.integer "button2raiserspfr",                :null => false
    t.integer "smallblind2raisershands",          :null => false
    t.integer "smallblind2raisersvpip",           :null => false
    t.integer "smallblind2raiserspfr",            :null => false
    t.integer "bigblind2raisershands",            :null => false
    t.integer "bigblind2raisersvpip",             :null => false
    t.integer "bigblind2raiserspfr",              :null => false
  end

  add_index "compiledplayerresultspositionaction_month", ["compiledplayerresults_id"], :name => "compiledplayerresultspositionaction_month_idx1", :unique => true

  create_table "compiledresults", :id => false, :force => true do |t|
    t.integer "player_id",                             :null => false
    t.date    "playeddate",                            :null => false
    t.integer "numberofplayers",          :limit => 2, :null => false
    t.integer "gametype_id",                           :null => false
    t.integer "bbgroup_id",               :limit => 2, :null => false
    t.integer "totalplayedhands",         :limit => 2, :null => false
    t.integer "compiledplayerresults_id",              :null => false
  end

  add_index "compiledresults", ["playeddate", "numberofplayers", "gametype_id", "bbgroup_id"], :name => "compiledresults_idx1"
  add_index "compiledresults", ["player_id"], :name => "compiledresults_idx2"

  create_table "compiledresults_month", :primary_key => "compiledplayerresults_id", :force => true do |t|
    t.integer "player_id",                     :null => false
    t.integer "playedonmonth",                 :null => false
    t.integer "numberofplayers",  :limit => 2, :null => false
    t.integer "gametype_id",                   :null => false
    t.integer "bbgroup_id",       :limit => 2, :null => false
    t.integer "totalplayedhands",              :null => false
  end

  add_index "compiledresults_month", ["player_id"], :name => "compiledresults_month_idx2"

  create_table "currency", :id => false, :force => true do |t|
    t.integer "currency_id"
    t.string  "currency_name",       :limit => 20
    t.string  "currency_symbol",     :limit => 4
    t.decimal "current_rate_in_usd",               :precision => 6, :scale => 4
  end

  create_table "gametypes", :primary_key => "gametype_id", :force => true do |t|
    t.string  "gametypedescription", :limit => 20,                :null => false
    t.integer "bigblind",                                         :null => false
    t.integer "smallblind",                                       :null => false
    t.integer "ante",                                             :null => false
    t.boolean "istourney",                                        :null => false
    t.integer "pokergametype",       :limit => 2,                 :null => false
    t.integer "pokergame",           :limit => 2
    t.integer "currency_id",         :limit => 2,  :default => 1
  end

  create_table "handhistories", :id => false, :force => true do |t|
    t.integer "pokerhand_id",            :null => false
    t.text    "handhistory"
    t.text    "standardizedhandhistory"
    t.text    "filename"
  end

  create_table "hemplayernotes", :primary_key => "note_id", :force => true do |t|
    t.integer "player_id"
    t.text    "note"
    t.integer "icon_id",   :limit => 2
  end

  create_table "holecards", :id => false, :force => true do |t|
    t.integer "holecard_id",                 :null => false
    t.string  "holecardstring", :limit => 6
    t.integer "count"
    t.integer "winnings"
  end

  add_index "holecards", ["holecard_id"], :name => "index_holecards_on_holecard_id"
  add_index "holecards", ["holecardstring"], :name => "index_holecards_on_holecardstring"

  create_table "importedfiles", :id => false, :force => true do |t|
    t.integer  "importedfile_id",                     :null => false
    t.text     "filename",                            :null => false
    t.datetime "lastmodifieddate",                    :null => false
    t.integer  "filesize"
    t.integer  "lastimportedhandnumber", :limit => 8
  end

  add_index "importedfiles", ["filename"], :name => "importedfiles_idx1"

  create_table "manuallyenteredsession", :primary_key => "manuallyenteredsession_id", :force => true do |t|
    t.text     "description"
    t.text     "sessionnotes"
    t.integer  "player_id",      :null => false
    t.datetime "starttimestamp"
    t.datetime "endtimestamp"
  end

  create_table "optimizedplayers", :id => false, :force => true do |t|
    t.integer "player_id"
  end

  create_table "playerhandscashkeycolumns", :id => false, :force => true do |t|
    t.integer  "pokerhand_id",                            :null => false
    t.integer  "playerhand_id",                           :null => false
    t.datetime "handtimestamp",                           :null => false
    t.integer  "gametype_id",                             :null => false
    t.integer  "player_id",                               :null => false
    t.integer  "numberofplayers",            :limit => 2, :null => false
    t.integer  "positiontype_id",            :limit => 2, :null => false
    t.integer  "holecard1int",               :limit => 2, :null => false
    t.integer  "holecard2int",               :limit => 2, :null => false
    t.integer  "holecardvalue_id",           :limit => 2, :null => false
    t.integer  "rakeamount",                              :null => false
    t.integer  "netamountwon",                            :null => false
    t.integer  "streetwentallin",            :limit => 2, :null => false
    t.boolean  "didvpip",                                 :null => false
    t.boolean  "didpfr",                                  :null => false
    t.integer  "preflopaction_id",           :limit => 2, :null => false
    t.integer  "firstpreflopactiontype_id",  :limit => 2, :null => false
    t.integer  "maxstreetseen",              :limit => 2, :null => false
    t.integer  "totalflopbets",              :limit => 2, :null => false
    t.integer  "totalflopcalls",             :limit => 2, :null => false
    t.integer  "totalturnbets",              :limit => 2, :null => false
    t.integer  "totalturncalls",             :limit => 2, :null => false
    t.integer  "totalriverbets",             :limit => 2, :null => false
    t.integer  "totalrivercalls",            :limit => 2, :null => false
    t.integer  "preflopplayeractiontype_id", :limit => 2, :null => false
    t.boolean  "flopcbetpossible",                        :null => false
    t.boolean  "flopcbetmade",                            :null => false
    t.boolean  "flopfacingcbet",                          :null => false
    t.boolean  "flopfoldedtocbet",                        :null => false
    t.integer  "flopplayeractiontype_id",    :limit => 2, :null => false
    t.boolean  "turncbetpossible",                        :null => false
    t.boolean  "turncbetmade",                            :null => false
    t.boolean  "turnfacingcbet",                          :null => false
    t.boolean  "turnfoldedtocbet",                        :null => false
    t.integer  "turnplayeractiontype_id",    :limit => 2, :null => false
    t.boolean  "rivercbetpossible",                       :null => false
    t.boolean  "rivercbetmade",                           :null => false
    t.boolean  "riverfacingcbet",                         :null => false
    t.boolean  "riverfoldedtocbet",                       :null => false
    t.integer  "riverplayeractiontype_id",   :limit => 2, :null => false
    t.integer  "holecard3int",               :limit => 2
    t.integer  "holecard4int",               :limit => 2
  end

  add_index "playerhandscashkeycolumns", ["player_id", "handtimestamp"], :name => "playerhandscashkeycolumns_idx1"
  add_index "playerhandscashkeycolumns", ["playerhand_id"], :name => "playerhandscashkeycolumns_ha_idx1"
  add_index "playerhandscashkeycolumns", ["pokerhand_id"], :name => "playerhandscashkeycolumns_idx2"

  create_table "playerhandscashkeycolumns_hero", :id => false, :force => true do |t|
    t.integer  "pokerhand_id",                            :null => false
    t.integer  "playerhand_id",                           :null => false
    t.datetime "handtimestamp",                           :null => false
    t.integer  "gametype_id",                             :null => false
    t.integer  "player_id",                               :null => false
    t.integer  "numberofplayers",            :limit => 2, :null => false
    t.integer  "positiontype_id",            :limit => 2, :null => false
    t.integer  "holecard1int",               :limit => 2, :null => false
    t.integer  "holecard2int",               :limit => 2, :null => false
    t.integer  "holecardvalue_id",           :limit => 2, :null => false
    t.integer  "rakeamount",                              :null => false
    t.integer  "netamountwon",                            :null => false
    t.integer  "streetwentallin",            :limit => 2, :null => false
    t.boolean  "didvpip",                                 :null => false
    t.boolean  "didpfr",                                  :null => false
    t.integer  "preflopaction_id",           :limit => 2, :null => false
    t.integer  "firstpreflopactiontype_id",  :limit => 2, :null => false
    t.integer  "maxstreetseen",              :limit => 2, :null => false
    t.integer  "totalflopbets",              :limit => 2, :null => false
    t.integer  "totalflopcalls",             :limit => 2, :null => false
    t.integer  "totalturnbets",              :limit => 2, :null => false
    t.integer  "totalturncalls",             :limit => 2, :null => false
    t.integer  "totalriverbets",             :limit => 2, :null => false
    t.integer  "totalrivercalls",            :limit => 2, :null => false
    t.integer  "preflopplayeractiontype_id", :limit => 2, :null => false
    t.boolean  "flopcbetpossible",                        :null => false
    t.boolean  "flopcbetmade",                            :null => false
    t.boolean  "flopfacingcbet",                          :null => false
    t.boolean  "flopfoldedtocbet",                        :null => false
    t.integer  "flopplayeractiontype_id",    :limit => 2, :null => false
    t.boolean  "turncbetpossible",                        :null => false
    t.boolean  "turncbetmade",                            :null => false
    t.boolean  "turnfacingcbet",                          :null => false
    t.boolean  "turnfoldedtocbet",                        :null => false
    t.integer  "turnplayeractiontype_id",    :limit => 2, :null => false
    t.boolean  "rivercbetpossible",                       :null => false
    t.boolean  "rivercbetmade",                           :null => false
    t.boolean  "riverfacingcbet",                         :null => false
    t.boolean  "riverfoldedtocbet",                       :null => false
    t.integer  "riverplayeractiontype_id",   :limit => 2, :null => false
    t.integer  "holecard3int",               :limit => 2
    t.integer  "holecard4int",               :limit => 2
  end

  add_index "playerhandscashkeycolumns_hero", ["holecardvalue_id"], :name => "index_playerhandscashkeycolumns_hero_on_holecardvalue_id"
  add_index "playerhandscashkeycolumns_hero", ["netamountwon"], :name => "index_playerhandscashkeycolumns_hero_on_netamountwon"
  add_index "playerhandscashkeycolumns_hero", ["player_id", "handtimestamp"], :name => "playerhandscashkeycolumns_hero_idx1"
  add_index "playerhandscashkeycolumns_hero", ["pokerhand_id"], :name => "index_playerhandscashkeycolumns_hero_on_pokerhand_id"
  add_index "playerhandscashkeycolumns_hero", ["pokerhand_id"], :name => "playerhandscashkeycolumns_hero_idx2"

  create_table "playerhandscashmisc", :id => false, :force => true do |t|
    t.integer "playerhand_id",                                        :null => false
    t.integer "stacksize",                                            :null => false
    t.integer "effectivestacksize",                                   :null => false
    t.integer "seatnumber",               :limit => 2,                :null => false
    t.integer "offthebutton",             :limit => 2,                :null => false
    t.integer "finalhandtype_id",         :limit => 2,                :null => false
    t.boolean "ishero",                                               :null => false
    t.integer "sawflopastype_id",         :limit => 2,                :null => false
    t.integer "betamountpreflop",                                     :null => false
    t.integer "callamountpreflop",                                    :null => false
    t.integer "postamountpreflop",                                    :null => false
    t.integer "totalbetspreflop",         :limit => 2,                :null => false
    t.integer "totalcallspreflop",        :limit => 2,                :null => false
    t.integer "threebetresponsetype_id",  :limit => 2,                :null => false
    t.integer "fourbetresponsetype_id",   :limit => 2,                :null => false
    t.boolean "limpreraisedpreflop",                                  :null => false
    t.boolean "bbstealattempted",                                     :null => false
    t.boolean "bbstealdefended",                                      :null => false
    t.boolean "bbstealreraised",                                      :null => false
    t.boolean "sbstealattempted",                                     :null => false
    t.boolean "sbstealdefended",                                      :null => false
    t.boolean "sbstealreraised",                                      :null => false
    t.float   "preflopraisepercentofpot",                             :null => false
    t.float   "facingraisepercentofpot",                              :null => false
    t.integer "returnedamount",                        :default => 0, :null => false
  end

  add_index "playerhandscashmisc", ["playerhand_id"], :name => "playerhandscashmisc_idx1"

  create_table "playerhandscashmisc_hero", :id => false, :force => true do |t|
    t.integer "playerhand_id",                                        :null => false
    t.integer "stacksize",                                            :null => false
    t.integer "effectivestacksize",                                   :null => false
    t.integer "seatnumber",               :limit => 2,                :null => false
    t.integer "offthebutton",             :limit => 2,                :null => false
    t.integer "finalhandtype_id",         :limit => 2,                :null => false
    t.boolean "ishero",                                               :null => false
    t.integer "sawflopastype_id",         :limit => 2,                :null => false
    t.integer "betamountpreflop",                                     :null => false
    t.integer "callamountpreflop",                                    :null => false
    t.integer "postamountpreflop",                                    :null => false
    t.integer "totalbetspreflop",         :limit => 2,                :null => false
    t.integer "totalcallspreflop",        :limit => 2,                :null => false
    t.integer "threebetresponsetype_id",  :limit => 2,                :null => false
    t.integer "fourbetresponsetype_id",   :limit => 2,                :null => false
    t.boolean "limpreraisedpreflop",                                  :null => false
    t.boolean "bbstealattempted",                                     :null => false
    t.boolean "bbstealdefended",                                      :null => false
    t.boolean "bbstealreraised",                                      :null => false
    t.boolean "sbstealattempted",                                     :null => false
    t.boolean "sbstealdefended",                                      :null => false
    t.boolean "sbstealreraised",                                      :null => false
    t.float   "preflopraisepercentofpot",                             :null => false
    t.float   "facingraisepercentofpot",                              :null => false
    t.integer "returnedamount",                        :default => 0, :null => false
  end

  add_index "playerhandscashmisc_hero", ["playerhand_id"], :name => "playerhandscashmisc_hero_idx1"

  create_table "playerhandsflop", :id => false, :force => true do |t|
    t.integer "playerhand_id",                        :null => false
    t.integer "betamount",                            :null => false
    t.integer "callamount",                           :null => false
    t.boolean "calledcbet",                           :null => false
    t.boolean "raisedcbet",                           :null => false
    t.boolean "lasttoactonstreet",                    :null => false
    t.integer "relativeposition",        :limit => 2, :null => false
    t.float   "betpercentofpot",                      :null => false
    t.float   "raisepercentofpot",                    :null => false
    t.float   "facingraisepercentofpot",              :null => false
    t.float   "facingbetpercentofpot",                :null => false
    t.boolean "wascheckraised",                       :null => false
    t.boolean "unopened",                             :null => false
    t.integer "madehandvalue",           :limit => 2, :null => false
    t.integer "flushdrawvalue",          :limit => 2, :null => false
    t.integer "straightdrawvalue",       :limit => 2, :null => false
    t.float   "stackpotratio",                        :null => false
  end

  create_table "playerhandsflop_hero", :id => false, :force => true do |t|
    t.integer "playerhand_id",                        :null => false
    t.integer "betamount",                            :null => false
    t.integer "callamount",                           :null => false
    t.boolean "calledcbet",                           :null => false
    t.boolean "raisedcbet",                           :null => false
    t.boolean "lasttoactonstreet",                    :null => false
    t.integer "relativeposition",        :limit => 2, :null => false
    t.float   "betpercentofpot",                      :null => false
    t.float   "raisepercentofpot",                    :null => false
    t.float   "facingraisepercentofpot",              :null => false
    t.float   "facingbetpercentofpot",                :null => false
    t.boolean "wascheckraised",                       :null => false
    t.boolean "unopened",                             :null => false
    t.integer "madehandvalue",           :limit => 2, :null => false
    t.integer "flushdrawvalue",          :limit => 2, :null => false
    t.integer "straightdrawvalue",       :limit => 2, :null => false
    t.float   "stackpotratio",                        :null => false
  end

  create_table "playerhandsriver", :id => false, :force => true do |t|
    t.integer "playerhand_id",                        :null => false
    t.integer "betamount",                            :null => false
    t.integer "callamount",                           :null => false
    t.boolean "calledcbet",                           :null => false
    t.boolean "raisedcbet",                           :null => false
    t.boolean "lasttoactonstreet",                    :null => false
    t.integer "relativeposition",        :limit => 2, :null => false
    t.float   "betpercentofpot",                      :null => false
    t.float   "raisepercentofpot",                    :null => false
    t.float   "facingraisepercentofpot",              :null => false
    t.float   "facingbetpercentofpot",                :null => false
    t.boolean "wascheckraised",                       :null => false
    t.boolean "unopened",                             :null => false
    t.integer "madehandvalue",           :limit => 2, :null => false
    t.float   "stackpotratio",                        :null => false
  end

  create_table "playerhandsriver_hero", :id => false, :force => true do |t|
    t.integer "playerhand_id",                        :null => false
    t.integer "betamount",                            :null => false
    t.integer "callamount",                           :null => false
    t.boolean "calledcbet",                           :null => false
    t.boolean "raisedcbet",                           :null => false
    t.boolean "lasttoactonstreet",                    :null => false
    t.integer "relativeposition",        :limit => 2, :null => false
    t.float   "betpercentofpot",                      :null => false
    t.float   "raisepercentofpot",                    :null => false
    t.float   "facingraisepercentofpot",              :null => false
    t.float   "facingbetpercentofpot",                :null => false
    t.boolean "wascheckraised",                       :null => false
    t.boolean "unopened",                             :null => false
    t.integer "madehandvalue",           :limit => 2, :null => false
    t.float   "stackpotratio",                        :null => false
  end

  create_table "playerhandstourneykeycolumns", :id => false, :force => true do |t|
    t.integer  "pokerhand_id",                             :null => false
    t.integer  "playerhand_id",                            :null => false
    t.datetime "handtimestamp",                            :null => false
    t.integer  "gametype_id",                              :null => false
    t.integer  "player_id",                                :null => false
    t.integer  "numberofplayers",            :limit => 2,  :null => false
    t.integer  "positiontype_id",            :limit => 2,  :null => false
    t.integer  "holecard1int",               :limit => 2,  :null => false
    t.integer  "holecard2int",               :limit => 2,  :null => false
    t.integer  "holecardvalue_id",           :limit => 2,  :null => false
    t.integer  "rakeamount",                               :null => false
    t.integer  "netamountwon",                             :null => false
    t.integer  "streetwentallin",            :limit => 2,  :null => false
    t.boolean  "didvpip",                                  :null => false
    t.boolean  "didpfr",                                   :null => false
    t.integer  "preflopaction_id",           :limit => 2,  :null => false
    t.integer  "firstpreflopactiontype_id",  :limit => 2,  :null => false
    t.integer  "maxstreetseen",              :limit => 2,  :null => false
    t.integer  "totalflopbets",              :limit => 2,  :null => false
    t.integer  "totalflopcalls",             :limit => 2,  :null => false
    t.integer  "totalturnbets",              :limit => 2,  :null => false
    t.integer  "totalturncalls",             :limit => 2,  :null => false
    t.integer  "totalriverbets",             :limit => 2,  :null => false
    t.integer  "totalrivercalls",            :limit => 2,  :null => false
    t.integer  "preflopplayeractiontype_id", :limit => 2,  :null => false
    t.boolean  "flopcbetpossible",                         :null => false
    t.boolean  "flopcbetmade",                             :null => false
    t.boolean  "flopfacingcbet",                           :null => false
    t.boolean  "flopfoldedtocbet",                         :null => false
    t.integer  "flopplayeractiontype_id",    :limit => 2,  :null => false
    t.boolean  "turncbetpossible",                         :null => false
    t.boolean  "turncbetmade",                             :null => false
    t.boolean  "turnfacingcbet",                           :null => false
    t.boolean  "turnfoldedtocbet",                         :null => false
    t.integer  "turnplayeractiontype_id",    :limit => 2,  :null => false
    t.boolean  "rivercbetpossible",                        :null => false
    t.boolean  "rivercbetmade",                            :null => false
    t.boolean  "riverfacingcbet",                          :null => false
    t.boolean  "riverfoldedtocbet",                        :null => false
    t.integer  "riverplayeractiontype_id",   :limit => 2,  :null => false
    t.string   "tourneynumber",              :limit => 20
    t.integer  "icmsklanskybucks",                         :null => false
    t.integer  "holecard3int",               :limit => 2
    t.integer  "holecard4int",               :limit => 2
  end

  add_index "playerhandstourneykeycolumns", ["player_id", "handtimestamp"], :name => "playerhandstourneykeycolumns_idx1"
  add_index "playerhandstourneykeycolumns", ["playerhand_id"], :name => "playerhandstourneykeycolumns_ha_idx1"
  add_index "playerhandstourneykeycolumns", ["pokerhand_id"], :name => "playerhandstourneykeycolumns_idx2"

  create_table "playerhandstourneykeycolumns_hero", :id => false, :force => true do |t|
    t.integer  "pokerhand_id",                             :null => false
    t.integer  "playerhand_id",                            :null => false
    t.datetime "handtimestamp",                            :null => false
    t.integer  "gametype_id",                              :null => false
    t.integer  "player_id",                                :null => false
    t.integer  "numberofplayers",            :limit => 2,  :null => false
    t.integer  "positiontype_id",            :limit => 2,  :null => false
    t.integer  "holecard1int",               :limit => 2,  :null => false
    t.integer  "holecard2int",               :limit => 2,  :null => false
    t.integer  "holecardvalue_id",           :limit => 2,  :null => false
    t.integer  "rakeamount",                               :null => false
    t.integer  "netamountwon",                             :null => false
    t.integer  "streetwentallin",            :limit => 2,  :null => false
    t.boolean  "didvpip",                                  :null => false
    t.boolean  "didpfr",                                   :null => false
    t.integer  "preflopaction_id",           :limit => 2,  :null => false
    t.integer  "firstpreflopactiontype_id",  :limit => 2,  :null => false
    t.integer  "maxstreetseen",              :limit => 2,  :null => false
    t.integer  "totalflopbets",              :limit => 2,  :null => false
    t.integer  "totalflopcalls",             :limit => 2,  :null => false
    t.integer  "totalturnbets",              :limit => 2,  :null => false
    t.integer  "totalturncalls",             :limit => 2,  :null => false
    t.integer  "totalriverbets",             :limit => 2,  :null => false
    t.integer  "totalrivercalls",            :limit => 2,  :null => false
    t.integer  "preflopplayeractiontype_id", :limit => 2,  :null => false
    t.boolean  "flopcbetpossible",                         :null => false
    t.boolean  "flopcbetmade",                             :null => false
    t.boolean  "flopfacingcbet",                           :null => false
    t.boolean  "flopfoldedtocbet",                         :null => false
    t.integer  "flopplayeractiontype_id",    :limit => 2,  :null => false
    t.boolean  "turncbetpossible",                         :null => false
    t.boolean  "turncbetmade",                             :null => false
    t.boolean  "turnfacingcbet",                           :null => false
    t.boolean  "turnfoldedtocbet",                         :null => false
    t.integer  "turnplayeractiontype_id",    :limit => 2,  :null => false
    t.boolean  "rivercbetpossible",                        :null => false
    t.boolean  "rivercbetmade",                            :null => false
    t.boolean  "riverfacingcbet",                          :null => false
    t.boolean  "riverfoldedtocbet",                        :null => false
    t.integer  "riverplayeractiontype_id",   :limit => 2,  :null => false
    t.string   "tourneynumber",              :limit => 20
    t.integer  "icmsklanskybucks",                         :null => false
    t.integer  "holecard3int",               :limit => 2
    t.integer  "holecard4int",               :limit => 2
  end

  add_index "playerhandstourneykeycolumns_hero", ["player_id", "handtimestamp"], :name => "playerhandstourneykeycolumns_hero_idx1"
  add_index "playerhandstourneykeycolumns_hero", ["pokerhand_id"], :name => "playerhandstourneykeycolumns_hero_idx2"

  create_table "playerhandstourneymisc", :id => false, :force => true do |t|
    t.integer "playerhand_id",                                        :null => false
    t.integer "stacksize",                                            :null => false
    t.integer "effectivestacksize",                                   :null => false
    t.integer "seatnumber",               :limit => 2,                :null => false
    t.integer "offthebutton",             :limit => 2,                :null => false
    t.integer "finalhandtype_id",         :limit => 2,                :null => false
    t.boolean "ishero",                                               :null => false
    t.integer "sawflopastype_id",         :limit => 2,                :null => false
    t.integer "betamountpreflop",                                     :null => false
    t.integer "callamountpreflop",                                    :null => false
    t.integer "postamountpreflop",                                    :null => false
    t.integer "totalbetspreflop",         :limit => 2,                :null => false
    t.integer "totalcallspreflop",        :limit => 2,                :null => false
    t.integer "threebetresponsetype_id",  :limit => 2,                :null => false
    t.integer "fourbetresponsetype_id",   :limit => 2,                :null => false
    t.boolean "limpreraisedpreflop",                                  :null => false
    t.boolean "bbstealattempted",                                     :null => false
    t.boolean "bbstealdefended",                                      :null => false
    t.boolean "bbstealreraised",                                      :null => false
    t.boolean "sbstealattempted",                                     :null => false
    t.boolean "sbstealdefended",                                      :null => false
    t.boolean "sbstealreraised",                                      :null => false
    t.float   "preflopraisepercentofpot",                             :null => false
    t.float   "facingraisepercentofpot",                              :null => false
    t.integer "returnedamount",                        :default => 0, :null => false
  end

  add_index "playerhandstourneymisc", ["playerhand_id"], :name => "playerhandstourneymisc_idx1"

  create_table "playerhandstourneymisc_hero", :id => false, :force => true do |t|
    t.integer "playerhand_id",                                        :null => false
    t.integer "stacksize",                                            :null => false
    t.integer "effectivestacksize",                                   :null => false
    t.integer "seatnumber",               :limit => 2,                :null => false
    t.integer "offthebutton",             :limit => 2,                :null => false
    t.integer "finalhandtype_id",         :limit => 2,                :null => false
    t.boolean "ishero",                                               :null => false
    t.integer "sawflopastype_id",         :limit => 2,                :null => false
    t.integer "betamountpreflop",                                     :null => false
    t.integer "callamountpreflop",                                    :null => false
    t.integer "postamountpreflop",                                    :null => false
    t.integer "totalbetspreflop",         :limit => 2,                :null => false
    t.integer "totalcallspreflop",        :limit => 2,                :null => false
    t.integer "threebetresponsetype_id",  :limit => 2,                :null => false
    t.integer "fourbetresponsetype_id",   :limit => 2,                :null => false
    t.boolean "limpreraisedpreflop",                                  :null => false
    t.boolean "bbstealattempted",                                     :null => false
    t.boolean "bbstealdefended",                                      :null => false
    t.boolean "bbstealreraised",                                      :null => false
    t.boolean "sbstealattempted",                                     :null => false
    t.boolean "sbstealdefended",                                      :null => false
    t.boolean "sbstealreraised",                                      :null => false
    t.float   "preflopraisepercentofpot",                             :null => false
    t.float   "facingraisepercentofpot",                              :null => false
    t.integer "returnedamount",                        :default => 0, :null => false
  end

  add_index "playerhandstourneymisc_hero", ["playerhand_id"], :name => "playerhandstourneymisc_hero_idx1"

  create_table "playerhandsturn", :id => false, :force => true do |t|
    t.integer "playerhand_id",                        :null => false
    t.integer "betamount",                            :null => false
    t.integer "callamount",                           :null => false
    t.boolean "calledcbet",                           :null => false
    t.boolean "raisedcbet",                           :null => false
    t.boolean "lasttoactonstreet",                    :null => false
    t.integer "relativeposition",        :limit => 2, :null => false
    t.float   "betpercentofpot",                      :null => false
    t.float   "raisepercentofpot",                    :null => false
    t.float   "facingraisepercentofpot",              :null => false
    t.float   "facingbetpercentofpot",                :null => false
    t.boolean "wascheckraised",                       :null => false
    t.boolean "unopened",                             :null => false
    t.integer "madehandvalue",           :limit => 2, :null => false
    t.integer "flushdrawvalue",          :limit => 2, :null => false
    t.integer "straightdrawvalue",       :limit => 2, :null => false
    t.float   "stackpotratio",                        :null => false
  end

  create_table "playerhandsturn_hero", :id => false, :force => true do |t|
    t.integer "playerhand_id",                        :null => false
    t.integer "betamount",                            :null => false
    t.integer "callamount",                           :null => false
    t.boolean "calledcbet",                           :null => false
    t.boolean "raisedcbet",                           :null => false
    t.boolean "lasttoactonstreet",                    :null => false
    t.integer "relativeposition",        :limit => 2, :null => false
    t.float   "betpercentofpot",                      :null => false
    t.float   "raisepercentofpot",                    :null => false
    t.float   "facingraisepercentofpot",              :null => false
    t.float   "facingbetpercentofpot",                :null => false
    t.boolean "wascheckraised",                       :null => false
    t.boolean "unopened",                             :null => false
    t.integer "madehandvalue",           :limit => 2, :null => false
    t.integer "flushdrawvalue",          :limit => 2, :null => false
    t.integer "straightdrawvalue",       :limit => 2, :null => false
    t.float   "stackpotratio",                        :null => false
  end

  create_table "players", :primary_key => "player_id", :force => true do |t|
    t.integer  "site_id",                     :null => false
    t.text     "playername"
    t.datetime "lastplayeddate"
    t.integer  "cashhands",                   :null => false
    t.integer  "tourneyhands",                :null => false
    t.integer  "playertype_id",  :limit => 2, :null => false
  end

  add_index "players", ["playername", "site_id"], :name => "players_idx1"

  create_table "playervsplayer", :id => false, :force => true do |t|
    t.integer "player_id",                 :null => false
    t.integer "villain_id",                :null => false
    t.integer "pokerhand_id",              :null => false
    t.integer "amount",                    :null => false
    t.integer "pokergame",    :limit => 2
    t.integer "currency_id",  :limit => 2
  end

  add_index "playervsplayer", ["player_id", "villain_id"], :name => "playervsplayer_idx1"
  add_index "playervsplayer", ["pokerhand_id"], :name => "playervsplayer_idx2"

  create_table "playervsplayer_hero", :id => false, :force => true do |t|
    t.integer "player_id",                                :null => false
    t.integer "villain_id",                               :null => false
    t.integer "pokerhand_id",                             :null => false
    t.integer "amount",                                   :null => false
    t.integer "pokergame",    :limit => 2
    t.integer "currency_id",  :limit => 2, :default => 1
  end

  add_index "playervsplayer_hero", ["player_id", "villain_id"], :name => "playervsplayer_hero_idx1"
  add_index "playervsplayer_hero", ["pokerhand_id"], :name => "playervsplayer_hero_idx2"

  create_table "pokerhands", :primary_key => "pokerhand_id", :force => true do |t|
    t.integer  "gamenumber",                    :limit => 8,                :null => false
    t.integer  "site_id",                       :limit => 2,                :null => false
    t.datetime "handtimestamp",                                             :null => false
    t.integer  "table_id",                                                  :null => false
    t.integer  "gametype_id",                                               :null => false
    t.integer  "numberofplayers",               :limit => 2,                :null => false
    t.integer  "numberofplayerssawflop",        :limit => 2,                :null => false
    t.integer  "numberofplayerssawturn",        :limit => 2,                :null => false
    t.integer  "numberofplayerssawriver",       :limit => 2,                :null => false
    t.integer  "numberofplayerssawshowdown",    :limit => 2,                :null => false
    t.integer  "buttonseat",                    :limit => 2,                :null => false
    t.integer  "flopcard1int",                  :limit => 2,                :null => false
    t.integer  "flopcard2int",                  :limit => 2,                :null => false
    t.integer  "flopcard3int",                  :limit => 2,                :null => false
    t.integer  "turncardint",                   :limit => 2,                :null => false
    t.integer  "rivercardint",                  :limit => 2,                :null => false
    t.integer  "potsize",                                                   :null => false
    t.integer  "floppotsize",                                               :null => false
    t.integer  "turnpotsize",                                               :null => false
    t.integer  "riverpotsize",                                              :null => false
    t.integer  "showdownpotsize",                                           :null => false
    t.integer  "rakeamount",                                                :null => false
    t.integer  "flophandvalue",                 :limit => 2,                :null => false
    t.integer  "turnhandvalue",                 :limit => 2,                :null => false
    t.integer  "riverhandvalue",                :limit => 2,                :null => false
    t.integer  "flopflushcards",                :limit => 2,                :null => false
    t.integer  "turnflushcards",                :limit => 2,                :null => false
    t.boolean  "turntwoflushdraws",                                         :null => false
    t.integer  "riverflushcards",               :limit => 2,                :null => false
    t.integer  "flopstraightdrawscore",         :limit => 2,                :null => false
    t.integer  "turnstraightdrawscore",         :limit => 2,                :null => false
    t.integer  "riverstraightdrawscore",        :limit => 2,                :null => false
    t.integer  "flophighcardvalue",             :limit => 2,                :null => false
    t.integer  "turnhighcardvalue",             :limit => 2,                :null => false
    t.integer  "riverhighcardvalue",            :limit => 2,                :null => false
    t.integer  "positiontype_id_firstlimper",   :limit => 2,                :null => false
    t.integer  "positiontype_id_firstraiser",   :limit => 2,                :null => false
    t.integer  "positiontype_id_firstthreebet", :limit => 2,                :null => false
    t.integer  "mark_id",                       :limit => 2
    t.integer  "tablesize",                     :limit => 2, :default => 0, :null => false
  end

  add_index "pokerhands", ["gamenumber", "site_id"], :name => "uniqueserial", :unique => true
  add_index "pokerhands", ["handtimestamp"], :name => "pokerhands_idx1"

  create_table "pokerhands_hero", :id => false, :force => true do |t|
    t.integer  "pokerhand_id",                                              :null => false
    t.integer  "gamenumber",                    :limit => 8,                :null => false
    t.integer  "site_id",                       :limit => 2,                :null => false
    t.datetime "handtimestamp",                                             :null => false
    t.integer  "table_id",                                                  :null => false
    t.integer  "gametype_id",                                               :null => false
    t.integer  "numberofplayers",               :limit => 2,                :null => false
    t.integer  "numberofplayerssawflop",        :limit => 2,                :null => false
    t.integer  "numberofplayerssawturn",        :limit => 2,                :null => false
    t.integer  "numberofplayerssawriver",       :limit => 2,                :null => false
    t.integer  "numberofplayerssawshowdown",    :limit => 2,                :null => false
    t.integer  "buttonseat",                    :limit => 2,                :null => false
    t.integer  "flopcard1int",                  :limit => 2,                :null => false
    t.integer  "flopcard2int",                  :limit => 2,                :null => false
    t.integer  "flopcard3int",                  :limit => 2,                :null => false
    t.integer  "turncardint",                   :limit => 2,                :null => false
    t.integer  "rivercardint",                  :limit => 2,                :null => false
    t.integer  "potsize",                                                   :null => false
    t.integer  "floppotsize",                                               :null => false
    t.integer  "turnpotsize",                                               :null => false
    t.integer  "riverpotsize",                                              :null => false
    t.integer  "showdownpotsize",                                           :null => false
    t.integer  "rakeamount",                                                :null => false
    t.integer  "flophandvalue",                 :limit => 2,                :null => false
    t.integer  "turnhandvalue",                 :limit => 2,                :null => false
    t.integer  "riverhandvalue",                :limit => 2,                :null => false
    t.integer  "flopflushcards",                :limit => 2,                :null => false
    t.integer  "turnflushcards",                :limit => 2,                :null => false
    t.boolean  "turntwoflushdraws",                                         :null => false
    t.integer  "riverflushcards",               :limit => 2,                :null => false
    t.integer  "flopstraightdrawscore",         :limit => 2,                :null => false
    t.integer  "turnstraightdrawscore",         :limit => 2,                :null => false
    t.integer  "riverstraightdrawscore",        :limit => 2,                :null => false
    t.integer  "flophighcardvalue",             :limit => 2,                :null => false
    t.integer  "turnhighcardvalue",             :limit => 2,                :null => false
    t.integer  "riverhighcardvalue",            :limit => 2,                :null => false
    t.integer  "positiontype_id_firstlimper",   :limit => 2,                :null => false
    t.integer  "positiontype_id_firstraiser",   :limit => 2,                :null => false
    t.integer  "positiontype_id_firstthreebet", :limit => 2,                :null => false
    t.integer  "mark_id",                       :limit => 2
    t.integer  "tablesize",                     :limit => 2, :default => 0, :null => false
  end

  add_index "pokerhands_hero", ["handtimestamp"], :name => "pokerhands_hero_idx1"

  create_table "pokersites", :id => false, :force => true do |t|
    t.integer "site_id",                    :null => false
    t.string  "sitename",     :limit => 20, :null => false
    t.string  "abbreviation", :limit => 5,  :null => false
  end

  create_table "postflopactions", :id => false, :force => true do |t|
    t.integer "compiledplayerresults_id",              :null => false
    t.integer "streetactiontype_id",      :limit => 2, :null => false
    t.integer "count",                    :limit => 2, :null => false
    t.integer "betorraise",               :limit => 2, :null => false
    t.integer "checks",                   :limit => 2, :null => false
    t.integer "checkcall",                :limit => 2, :null => false
    t.integer "checkfold",                :limit => 2, :null => false
    t.integer "checkraise",               :limit => 2, :null => false
    t.integer "bet",                      :limit => 2, :null => false
    t.integer "betcall",                  :limit => 2, :null => false
    t.integer "betraise",                 :limit => 2, :null => false
    t.integer "betfold",                  :limit => 2, :null => false
    t.integer "raise",                    :limit => 2, :null => false
    t.integer "raisecall",                :limit => 2, :null => false
    t.integer "raiseraise",               :limit => 2, :null => false
    t.integer "raisefold",                :limit => 2, :null => false
    t.integer "call",                     :limit => 2, :null => false
    t.integer "callcall",                 :limit => 2, :null => false
    t.integer "callraise",                :limit => 2, :null => false
    t.integer "callfold",                 :limit => 2, :null => false
    t.integer "fold",                     :limit => 2, :null => false
    t.integer "unopenedinposition",       :limit => 2, :null => false
    t.integer "betunopenedinposition",    :limit => 2, :null => false
    t.integer "totalbets",                :limit => 2, :null => false
    t.integer "totalcalls",               :limit => 2, :null => false
    t.integer "sawshowdown",              :limit => 2, :null => false
    t.integer "wonshowdown",              :limit => 2, :null => false
  end

  add_index "postflopactions", ["compiledplayerresults_id", "streetactiontype_id"], :name => "postflopactions_idx1"

  create_table "postflopactions_month", :id => false, :force => true do |t|
    t.integer "compiledplayerresults_id", :null => false
    t.integer "streetactiontype_id",      :null => false
    t.integer "count",                    :null => false
    t.integer "betorraise",               :null => false
    t.integer "checks",                   :null => false
    t.integer "checkcall",                :null => false
    t.integer "checkfold",                :null => false
    t.integer "checkraise",               :null => false
    t.integer "bet",                      :null => false
    t.integer "betcall",                  :null => false
    t.integer "betraise",                 :null => false
    t.integer "betfold",                  :null => false
    t.integer "raise",                    :null => false
    t.integer "raisecall",                :null => false
    t.integer "raiseraise",               :null => false
    t.integer "raisefold",                :null => false
    t.integer "call",                     :null => false
    t.integer "callcall",                 :null => false
    t.integer "callraise",                :null => false
    t.integer "callfold",                 :null => false
    t.integer "fold",                     :null => false
    t.integer "unopenedinposition",       :null => false
    t.integer "betunopenedinposition",    :null => false
    t.integer "totalbets",                :null => false
    t.integer "totalcalls",               :null => false
    t.integer "sawshowdown",              :null => false
    t.integer "wonshowdown",              :null => false
  end

  add_index "postflopactions_month", ["compiledplayerresults_id", "streetactiontype_id"], :name => "postflopactions_month_idx1"

  create_table "rakeback", :primary_key => "rakeback_id", :force => true do |t|
    t.text     "description"
    t.integer  "player_id",               :null => false
    t.float    "rakeback_pct",            :null => false
    t.datetime "rakeback_starttimestamp"
    t.datetime "rakeback_endtimestamp"
  end

  add_index "rakeback", ["player_id"], :name => "rakeback_idx1"

  create_table "selectedplayer", :id => false, :force => true do |t|
    t.integer  "player_id",     :null => false
    t.datetime "selectiondate", :null => false
  end

  create_table "settings", :id => false, :force => true do |t|
    t.text "settingname"
    t.text "settingvalue"
  end

  create_table "specialholecardactions", :id => false, :force => true do |t|
    t.integer "player_id",                          :null => false
    t.integer "actiontype",            :limit => 2, :null => false
    t.string  "holecard",              :limit => 6, :null => false
    t.integer "pokerhand_id",                       :null => false
    t.integer "gametype_id",                        :null => false
    t.integer "villainplayer_id",                   :null => false
    t.integer "positiontypeofvillain", :limit => 2, :null => false
    t.integer "positiontypeofplayer",  :limit => 2, :null => false
  end

  add_index "specialholecardactions", ["player_id", "actiontype"], :name => "specialholecardactions_idx1"
  add_index "specialholecardactions", ["pokerhand_id"], :name => "specialholecardactions_idx2"

  create_table "specialholecardactions_hero", :id => false, :force => true do |t|
    t.integer "player_id",                          :null => false
    t.integer "actiontype",            :limit => 2, :null => false
    t.string  "holecard",              :limit => 6, :null => false
    t.integer "pokerhand_id",                       :null => false
    t.integer "gametype_id",                        :null => false
    t.integer "villainplayer_id",                   :null => false
    t.integer "positiontypeofvillain", :limit => 2, :null => false
    t.integer "positiontypeofplayer",  :limit => 2, :null => false
  end

  add_index "specialholecardactions_hero", ["player_id", "actiontype"], :name => "specialholecardactions_hero_idx1"
  add_index "specialholecardactions_hero", ["pokerhand_id"], :name => "specialholecardactions_hero_idx2"

  create_table "stats", :force => true do |t|
    t.string  "hand"
    t.integer "count"
  end

  create_table "tables", :primary_key => "table_id", :force => true do |t|
    t.text "tablename"
  end

  add_index "tables", ["tablename"], :name => "tables_idx1"

  create_table "tourneydata", :id => false, :force => true do |t|
    t.text     "filename"
    t.datetime "filelastmodifiedtime"
    t.text     "tourneynumber",                                    :null => false
    t.integer  "buyin"
    t.integer  "rake"
    t.datetime "firsthandtimestamp"
    t.datetime "lasthandtimestamp"
    t.integer  "importtype_id",        :limit => 2,                :null => false
    t.integer  "pokergametype_id",     :limit => 2,                :null => false
    t.integer  "site_id",              :limit => 2,                :null => false
    t.integer  "speedtype_id",         :limit => 2,                :null => false
    t.integer  "tourneytables",        :limit => 2,                :null => false
    t.integer  "tourneysize",          :limit => 2,                :null => false
    t.text     "tourneytype"
    t.integer  "pokergame",            :limit => 2
    t.integer  "currency_id",          :limit => 2, :default => 1
  end

  add_index "tourneydata", ["tourneynumber", "site_id"], :name => "tourneydataindex1"

  create_table "tourneynotes", :id => false, :force => true do |t|
    t.integer  "tourney_id"
    t.integer  "notetype_id"
    t.datetime "creation_date"
    t.boolean  "is_deleted"
    t.text     "note"
  end

  add_index "tourneynotes", ["tourney_id"], :name => "tourneynotes_idx1"

  create_table "tourneyplayerdata", :id => false, :force => true do |t|
    t.string   "tourneynumber",       :limit => 20,                :null => false
    t.integer  "site_id",                                          :null => false
    t.integer  "player_id",                                        :null => false
    t.datetime "firsthandtimestamp"
    t.datetime "lasthandtimestamp"
    t.integer  "finishposition",      :limit => 2
    t.boolean  "tourney_ended"
    t.integer  "winnings"
    t.integer  "rebuyamount"
    t.integer  "icmadjustedwinnings"
    t.integer  "currency_id",         :limit => 2,  :default => 1
  end

  add_index "tourneyplayerdata", ["player_id", "tourneynumber", "site_id"], :name => "tourneyplayerdataindex1"
  add_index "tourneyplayerdata", ["tourneynumber", "site_id"], :name => "tourneyplayerdataindex2"

  create_table "unoptimizedheros", :id => false, :force => true do |t|
    t.integer "player_id"
  end

end
