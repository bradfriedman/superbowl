class StaticPagesController < ApplicationController
  def editbets
  end

  def scoreboard
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
