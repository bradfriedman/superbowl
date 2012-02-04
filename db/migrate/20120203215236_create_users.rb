class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :anthemOver
      t.boolean :coinToss
      t.boolean :tyreeShownOver
      t.boolean :pointsOver
      t.boolean :scoreFirst
      t.boolean :anyScorelessQuarters
      t.boolean :firstChallengeOverturned
      t.boolean :scoreLast
      t.boolean :firstTouchdownYardageOver
      t.boolean :firstTimeout
      t.boolean :longestTD
      t.boolean :moreTurnovers
      t.boolean :missedFieldGoal
      t.boolean :bothTeamsLeadInFirstHalf
      t.boolean :morePunts
      t.boolean :moreFirstDowns
      t.boolean :hakeemNicksReceptionsOverGoalsInFlyersRangers
      t.boolean :nicksCatchBeforeWelker
      t.boolean :bradyFirstTo100Yards
      t.boolean :welkerReceptionsOverLebronAssists
      t.integer :anthemMinutesBet
      t.integer :coinTossBet
      t.integer :tyreeShownOverBet
      t.integer :pointsOverBet
      t.integer :scoreFirstBet
      t.integer :anyScorelessQuartersBet
      t.integer :firstChallengeOverturnedBet
      t.integer :scoreLastBet
      t.integer :firstTouchdownYardageOverBet
      t.integer :firstTimeoutBet
      t.integer :longestTDBet
      t.integer :moreTurnoversBet
      t.integer :missedFieldGoalBet
      t.integer :bothTeamsLeadInFirstHalfBet
      t.integer :morePuntsBet
      t.integer :moreFirstDownsBet
      t.integer :hakeemNicksReceptionsOverGoalsInFlyersRangersBet
      t.integer :nicksCatchBeforeWelkerBet
      t.integer :bradyFirstTo100YardsBet
      t.integer :welkerReceptionsOverLebronAssistsBet

      t.timestamps
    end
  end
end
