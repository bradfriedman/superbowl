class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    #@user = User.find(params[:id])
    #if @user.update(params[:user])
    #  redirect_to @user
    #else
    #  render 'show'
    #end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
end
