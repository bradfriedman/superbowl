# == Schema Information
#
# Table name: users
#
#  id                                               :integer         not null, primary key
#  name                                             :string(255)
#  anthemOver                                       :boolean
#  coinToss                                         :boolean
#  tyreeShownOver                                   :boolean
#  pointsOver                                       :boolean
#  scoreFirst                                       :boolean
#  anyScorelessQuarters                             :boolean
#  firstChallengeOverturned                         :boolean
#  scoreLast                                        :boolean
#  firstTouchdownYardageOver                        :boolean
#  firstTimeout                                     :boolean
#  longestTD                                        :boolean
#  moreTurnovers                                    :boolean
#  missedFieldGoal                                  :boolean
#  bothTeamsLeadInFirstHalf                         :boolean
#  morePunts                                        :boolean
#  moreFirstDowns                                   :boolean
#  hakeemNicksReceptionsOverGoalsInFlyersRangers    :boolean
#  nicksCatchBeforeWelker                           :boolean
#  bradyFirstTo100Yards                             :boolean
#  welkerReceptionsOverLebronAssists                :boolean
#  anthemMinutesBet                                 :integer
#  coinTossBet                                      :integer
#  tyreeShownOverBet                                :integer
#  pointsOverBet                                    :integer
#  scoreFirstBet                                    :integer
#  anyScorelessQuartersBet                          :integer
#  firstChallengeOverturnedBet                      :integer
#  firstTouchdownYardageOverBet                     :integer
#  firstTimeoutBet                                  :integer
#  longestTDBet                                     :integer
#  moreTurnoversBet                                 :integer
#  missedFieldGoalBet                               :integer
#  bothTeamsLeadInFirstHalfBet                      :integer
#  morePuntsBet                                     :integer
#  moreFirstDownsBet                                :integer
#  hakeemNicksReceptionsOverGoalsInFlyersRangersBet :integer
#  nicksCatchBeforeWelkerBet                        :integer
#  bradyFirstTo100YardsBet                          :integer
#  welkerReceptionsOverLebronAssistsBet             :integer
#  created_at                                       :datetime        not null
#  updated_at                                       :datetime        not null
#  scoreLastBet                                     :integer
#  email                                            :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
