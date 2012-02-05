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

module Enumerable
  def dups
      inject({}) {|h,v| h[v]=h[v].to_i+1; h}.reject{|k,v| v==1}.keys
  end
end

class UniqueBetsValidator < ActiveModel::Validator

  
  def validate(record)
    total = record.anthemMinutesBet +
           record.coinTossBet + 
           record.tyreeShownOverBet +
           record.pointsOverBet + 
           record.scoreFirstBet +
           record.scoreLastBet +
           record.anyScorelessQuartersBet +
           record.firstChallengeOverturnedBet + 
           record.firstTouchdownYardageOverBet + 
           record.firstTimeoutBet +
           record.longestTDBet +
           record.moreTurnoversBet +
           record.missedFieldGoalBet +
           record.bothTeamsLeadInFirstHalfBet +
           record.morePuntsBet +
           record.moreFirstDownsBet +
           record.hakeemNicksReceptionsOverGoalsInFlyersRangersBet +
           record.nicksCatchBeforeWelkerBet +
           record.bradyFirstTo100YardsBet +
           record.welkerReceptionsOverLebronAssistsBet
           
    unless total == 210      
      a = Array.new
      a << record.anthemMinutesBet << record.coinTossBet << record.tyreeShownOverBet << record.pointsOverBet << record.scoreFirstBet << record.scoreLastBet << record.anyScorelessQuartersBet << record.firstChallengeOverturnedBet << record.firstTouchdownYardageOverBet << record.firstTimeoutBet << record.longestTDBet << record.moreTurnoversBet << record.missedFieldGoalBet << record.bothTeamsLeadInFirstHalfBet << record.morePuntsBet << record.moreFirstDownsBet << record.hakeemNicksReceptionsOverGoalsInFlyersRangersBet << record.nicksCatchBeforeWelkerBet << record.bradyFirstTo100YardsBet << record.welkerReceptionsOverLebronAssistsBet
      record.errors[:base] << "Please enter a different bet amount for each proposition. Bets you have duplicates of: " + a.dups.sort.inspect.to_s
    end
  end
end
  
class User < ActiveRecord::Base
  attr_accessible :name, :email, :anthemOver, :coinToss, :tyreeShownOver, :pointsOver, :scoreFirst, :anyScorelessQuarters, :firstChallengeOverturned, :scoreLast, :firstTouchdownYardageOver, :firstTimeout, :longestTD, :moreTurnovers, :missedFieldGoal, :bothTeamsLeadInFirstHalf, :morePunts, :moreFirstDowns, :hakeemNicksReceptionsOverGoalsInFlyersRangers, :nicksCatchBeforeWelker, :bradyFirstTo100Yards, :welkerReceptionsOverLebronAssists, :anthemMinutesBet, :coinTossBet, :tyreeShownOverBet, :pointsOverBet, :scoreFirstBet, :anyScorelessQuartersBet, :firstChallengeOverturnedBet, :scoreLastBet, :firstTouchdownYardageOverBet, :firstTimeoutBet, :longestTDBet, :moreTurnoversBet, :missedFieldGoalBet, :bothTeamsLeadInFirstHalfBet, :morePuntsBet, :moreFirstDownsBet, :hakeemNicksReceptionsOverGoalsInFlyersRangersBet, :nicksCatchBeforeWelkerBet, :bradyFirstTo100YardsBet, :welkerReceptionsOverLebronAssistsBet
  
  validates :anthemOver, :coinToss, :tyreeShownOver, :pointsOver, :scoreFirst, :anyScorelessQuarters, :firstChallengeOverturned, :scoreLast, :firstTouchdownYardageOver, :firstTimeout, :longestTD, :moreTurnovers, :missedFieldGoal, :bothTeamsLeadInFirstHalf, :morePunts, :moreFirstDowns, :hakeemNicksReceptionsOverGoalsInFlyersRangers, :nicksCatchBeforeWelker, :bradyFirstTo100Yards, :welkerReceptionsOverLebronAssists, :inclusion => { :in => [true, false] }
  
  validates :anthemMinutesBet, :coinTossBet, :tyreeShownOverBet, :pointsOverBet, :scoreFirstBet, :anyScorelessQuartersBet, :firstChallengeOverturnedBet, :scoreLastBet, :firstTouchdownYardageOverBet, :firstTimeoutBet, :longestTDBet, :moreTurnoversBet, :missedFieldGoalBet, :bothTeamsLeadInFirstHalfBet, :morePuntsBet, :moreFirstDownsBet, :hakeemNicksReceptionsOverGoalsInFlyersRangersBet, :nicksCatchBeforeWelkerBet, :bradyFirstTo100YardsBet, :welkerReceptionsOverLebronAssistsBet, presence: true
  
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  
  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: valid_email_regex }, uniqueness: { case_sensitive: false }
  
  include ActiveModel::Validations
  validates_with UniqueBetsValidator
end