class SessionsController < ApplicationController

  #add before_action to prevent non-logged-in users from going to secret page

  def login
  end

  def create
    if !params[:name] || params[:name]==""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to user_path
    end
  end

  def user
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to login_path
  end




end
