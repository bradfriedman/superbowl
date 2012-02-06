# == Schema Information
#
# Table name: results
#
#  id                                                  :integer         not null, primary key
#  anthemOverResult                                    :boolean
#  coinTossResult                                      :boolean
#  tyreeShownOverResult                                :boolean
#  pointsOverResult                                    :boolean
#  scoreFirstResult                                    :boolean
#  scoreLastResult                                     :boolean
#  anyScorelessQuartersResult                          :boolean
#  firstChallengeOverturnedResult                      :boolean
#  firstTouchdownYardageOverResult                     :boolean
#  firstTimeoutResult                                  :boolean
#  longestTDResult                                     :boolean
#  moreTurnoversResult                                 :boolean
#  missedFieldGoalResult                               :boolean
#  bothTeamsLeadInFirstHalfResult                      :boolean
#  morePuntsResult                                     :boolean
#  moreFirstDownsResult                                :boolean
#  hakeemNicksReceptionsOverGoalsInFlyersRangersResult :boolean
#  nicksCatchBeforeWelkerResult                        :boolean
#  bradyFirstTo100YardsResult                          :boolean
#  welkerReceptionsOverLebronAssistsResult             :boolean
#  created_at                                          :datetime        not null
#  updated_at                                          :datetime        not null
#

class Result < ActiveRecord::Base
  attr_accessible :anthemOverResult, :coinTossResult, :tyreeShownOverResult, :pointsOverResult, :scoreFirstResult, :scoreLastResult, :anyScorelessQuartersResult, :firstChallengeOverturnedResult, :firstTouchdownYardageOverResult, :firstTimeoutResult, :longestTDResult, :moreTurnoversResult, :missedFieldGoalResult, :bothTeamsLeadInFirstHalfResult, :morePuntsResult, :moreFirstDownsResult, :hakeemNicksReceptionsOverGoalsInFlyersRangersResult, :nicksCatchBeforeWelkerResult, :bradyFirstTo100YardsResult, :welkerReceptionsOverLebronAssistsResult 
end
