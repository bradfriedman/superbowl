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

require 'test_helper'

class ResultsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
