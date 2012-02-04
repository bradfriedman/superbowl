class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.boolean :anthemOverResult
      t.boolean :coinTossResult
      t.boolean :tyreeShownOverResult
      t.boolean :pointsOverResult
      t.boolean :scoreFirstResult
      t.boolean :scoreLastResult
      t.boolean :anyScorelessQuartersResult
      t.boolean :firstChallengeOverturnedResult
      t.boolean :firstTouchdownYardageOverResult
      t.boolean :firstTimeoutResult
      t.boolean :longestTDResult
      t.boolean :moreTurnoversResult
      t.boolean :missedFieldGoalResult
      t.boolean :bothTeamsLeadInFirstHalfResult
      t.boolean :morePuntsResult
      t.boolean :moreFirstDownsResult
      t.boolean :hakeemNicksReceptionsOverGoalsInFlyersRangersResult
      t.boolean :nicksCatchBeforeWelkerResult
      t.boolean :bradyFirstTo100YardsResult
      t.boolean :welkerReceptionsOverLebronAssistsResult

      t.timestamps
    end
  end
end
