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

ActiveRecord::Schema.define(:version => 20120204013254) do

  create_table "results", :force => true do |t|
    t.boolean  "anthemOverResult"
    t.boolean  "coinTossResult"
    t.boolean  "tyreeShownOverResult"
    t.boolean  "pointsOverResult"
    t.boolean  "scoreFirstResult"
    t.boolean  "scoreLastResult"
    t.boolean  "anyScorelessQuartersResult"
    t.boolean  "firstChallengeOverturnedResult"
    t.boolean  "firstTouchdownYardageOverResult"
    t.boolean  "firstTimeoutResult"
    t.boolean  "longestTDResult"
    t.boolean  "moreTurnoversResult"
    t.boolean  "missedFieldGoalResult"
    t.boolean  "bothTeamsLeadInFirstHalfResult"
    t.boolean  "morePuntsResult"
    t.boolean  "moreFirstDownsResult"
    t.boolean  "hakeemNicksReceptionsOverGoalsInFlyersRangersResult"
    t.boolean  "nicksCatchBeforeWelkerResult"
    t.boolean  "bradyFirstTo100YardsResult"
    t.boolean  "welkerReceptionsOverLebronAssistsResult"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.boolean  "anthemOver"
    t.boolean  "coinToss"
    t.boolean  "tyreeShownOver"
    t.boolean  "pointsOver"
    t.boolean  "scoreFirst"
    t.boolean  "anyScorelessQuarters"
    t.boolean  "firstChallengeOverturned"
    t.boolean  "scoreLast"
    t.boolean  "firstTouchdownYardageOver"
    t.boolean  "firstTimeout"
    t.boolean  "longestTD"
    t.boolean  "moreTurnovers"
    t.boolean  "missedFieldGoal"
    t.boolean  "bothTeamsLeadInFirstHalf"
    t.boolean  "morePunts"
    t.boolean  "moreFirstDowns"
    t.boolean  "hakeemNicksReceptionsOverGoalsInFlyersRangers"
    t.boolean  "nicksCatchBeforeWelker"
    t.boolean  "bradyFirstTo100Yards"
    t.boolean  "welkerReceptionsOverLebronAssists"
    t.integer  "anthemMinutesBet"
    t.integer  "coinTossBet"
    t.integer  "tyreeShownOverBet"
    t.integer  "pointsOverBet"
    t.integer  "scoreFirstBet"
    t.integer  "anyScorelessQuartersBet"
    t.integer  "firstChallengeOverturnedBet"
    t.integer  "firstTouchdownYardageOverBet"
    t.integer  "firstTimeoutBet"
    t.integer  "longestTDBet"
    t.integer  "moreTurnoversBet"
    t.integer  "missedFieldGoalBet"
    t.integer  "bothTeamsLeadInFirstHalfBet"
    t.integer  "morePuntsBet"
    t.integer  "moreFirstDownsBet"
    t.integer  "hakeemNicksReceptionsOverGoalsInFlyersRangersBet"
    t.integer  "nicksCatchBeforeWelkerBet"
    t.integer  "bradyFirstTo100YardsBet"
    t.integer  "welkerReceptionsOverLebronAssistsBet"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.integer  "scoreLastBet"
    t.string   "email"
  end

end
