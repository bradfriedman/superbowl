class StaticPagesController < ApplicationController
  def editbets
  end

  def scoreboard
    @players = User.find(:all)
    @results = Result.find(:first)
    @scores = Hash.new
    @possiblescores = Hash.new
    
    if @results.nil?
      return
    end
    
    if @results.anthemOverResult != nil
      @players.each do |p|
        if @results.anthemMinutesResult == p.anthemMinutes
          @scores[p.id] += p.anthemMinutesBet
        end
      end
    else
      @players.each do |p|
        @possiblescores[p.id] += p.anthemMinutesBet
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
