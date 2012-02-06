class StaticPagesController < ApplicationController
  def editbets
  end

  def scoreboard
    @players = User.find(:all)
    @results = Result.find(:first)
    @scores = Hash.new
    @possiblescores = Hash.new
    
    @players.each do |p|
      @scores[p.id] = 0
      @possiblescores[p.id] = 0
    end
    
    unless @players.nil? || @results.nil?
      if @results.anthemOverResult != nil
        @players.each do |p|
          if @results.anthemOverResult == p.anthemOver
            @scores[p.id] = @scores[p.id] + p.anthemMinutesBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.anthemMinutesBet
        end
      end
      
      if @results.coinTossResult != nil
        @players.each do |p|
          if @results.coinTossResult == p.coinToss
            @scores[p.id] = @scores[p.id] + p.coinTossBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.coinTossBet
        end
      end
      
      if @results.tyreeShownOverResult != nil
        @players.each do |p|
          if @results.tyreeShownOverResult == p.tyreeShownOver
            @scores[p.id] = @scores[p.id] + p.tyreeShownOverBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.tyreeShownOverBet
        end
      end
      
      if @results.pointsOverResult != nil
        @players.each do |p|
          if @results.pointsOverResult == p.pointsOver
            @scores[p.id] = @scores[p.id] + p.pointsOverBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.pointsOverBet
        end
      end
      
      if @results.scoreFirstResult != nil
        @players.each do |p|
          if @results.scoreFirstResult == p.scoreFirst
            @scores[p.id] = @scores[p.id] + p.scoreFirstBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.scoreFirstBet
        end
      end
      
      if @results.anyScorelessQuartersResult != nil
        @players.each do |p|
          if @results.anyScorelessQuartersResult == p.anyScorelessQuarters
            @scores[p.id] = @scores[p.id] + p.anyScorelessQuartersBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.anyScorelessQuartersBet
        end
      end
      
      if @results.firstChallengeOverturnedResult != nil
        @players.each do |p|
          if @results.firstChallengeOverturnedResult == p.firstChallengeOverturned
            @scores[p.id] = @scores[p.id] + p.firstChallengeOverturnedBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.firstChallengeOverturnedBet
        end
      end
      
      if @results.scoreLastResult != nil
        @players.each do |p|
          if @results.scoreLastResult == p.scoreLast
            @scores[p.id] = @scores[p.id] + p.scoreLastBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.scoreLastBet
        end
      end
      
      if @results.firstTouchdownYardageOverResult != nil
        @players.each do |p|
          if @results.firstTouchdownYardageOverResult == p.firstTouchdownYardageOver
            @scores[p.id] = @scores[p.id] + p.firstTouchdownYardageOverBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.firstTouchdownYardageOverBet
        end
      end
      
      if @results.firstTimeoutResult != nil
        @players.each do |p|
          if @results.firstTimeoutResult == p.firstTimeout
            @scores[p.id] = @scores[p.id] + p.firstTimeoutBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.firstTimeoutBet
        end
      end
      
      if @results.longestTDResult != nil
        @players.each do |p|
          if @results.longestTDResult == p.longestTD
            @scores[p.id] = @scores[p.id] + p.longestTDBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.longestTDBet
        end
      end
      
      if @results.moreTurnoversResult != nil
        @players.each do |p|
          if @results.moreTurnoversResult == p.moreTurnovers
            @scores[p.id] = @scores[p.id] + p.moreTurnoversBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.moreTurnoversBet
        end
      end
      
      if @results.missedFieldGoalResult != nil
        @players.each do |p|
          if @results.missedFieldGoalResult == p.missedFieldGoal
            @scores[p.id] = @scores[p.id] + p.missedFieldGoal
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.missedFieldGoalBet
        end
      end
      
      if @results.bothTeamsLeadInFirstHalfResult != nil
        @players.each do |p|
          if @results.bothTeamsLeadInFirstHalfResult == p.bothTeamsLeadInFirstHalf
            @scores[p.id] = @scores[p.id] + p.bothTeamsLeadInFirstHalfBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.bothTeamsLeadInFirstHalfBet
        end
      end
      
      if @results.morePuntsResult != nil
        @players.each do |p|
          if @results.morePuntsResult == p.morePunts
            @scores[p.id] = @scores[p.id] + p.morePuntsBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.morePuntsBet
        end
      end
      
      if @results.moreFirstDownsResult != nil
        @players.each do |p|
          if @results.moreFirstDownsResult == p.moreFirstDowns
            @scores[p.id] = @scores[p.id] + p.moreFirstDownsBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.moreFirstDownsBet
        end
      end
      
      if @results.hakeemNicksReceptionsOverGoalsInFlyersRangersResult != nil
        @players.each do |p|
          if @results.hakeemNicksReceptionsOverGoalsInFlyersRangersResult == p.hakeemNicksReceptionsOverGoalsInFlyersRangers
            @scores[p.id] = @scores[p.id] + p.hakeemNicksReceptionsOverGoalsInFlyersRangersBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.hakeemNicksReceptionsOverGoalsInFlyersRangersBet
        end
      end
      
      if @results.nicksCatchBeforeWelkerResult != nil
        @players.each do |p|
          if @results.nicksCatchBeforeWelkerResult == p.nicksCatchBeforeWelker
            @scores[p.id] = @scores[p.id] + p.nicksCatchBeforeWelkerBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.nicksCatchBeforeWelkerBet
        end
      end
      
      if @results.bradyFirstTo100YardsResult != nil
        @players.each do |p|
          if @results.bradyFirstTo100YardsResult == p.bradyFirstTo100Yards
            @scores[p.id] = @scores[p.id] + p.bradyFirstTo100YardsBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.bradyFirstTo100YardsBet
        end
      end
      
      if @results.welkerReceptionsOverLebronAssistsResult != nil
        @players.each do |p|
          if @results.coinTossResult == p.welkerReceptionsOverLebronAssists
            @scores[p.id] = @scores[p.id] + p.welkerReceptionsOverLebronAssistsBet
          end
        end
      else
        @players.each do |p|
          @possiblescores[p.id] = @possiblescores[p.id] + p.welkerReceptionsOverLebronAssistsBet
        end
      end
    end
  end
  
  def search
    @userid = User.find_by_email(params[:q])
    if @userid == nil
      flash[:failure] = "Email address not found. Please try again."
      render 'editbets'
    else
      flash[:failure] = ""
      redirect_to @userid
    end
  end
end
