class ResultsController < ApplicationController
  def new
    @result = Result.new
  end
  
  def create
    @result = Result.new(params[:result])
    if @result.save
      redirect_to @result
    else
      render 'new'
    end
  end
  
  def show
    @result = Result.find(params[:id])
  end
  
  def edit
    @result = Result.find(params[:id])
  end
  
  def update
    @result = Result.find(params[:id])
    if @result.update_attributes(params[:result])
      flash[:success] = "Results successfully updated!"
      redirect_to "/scoreboard"
    else
      render 'show'
    end
  end
end
