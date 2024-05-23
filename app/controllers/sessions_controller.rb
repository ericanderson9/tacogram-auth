class SessionsController < ApplicationController
  def new
  end
  
  def create
    # TODO: authenticate user
    if User.find_by({ "email" => params["email"] }) == nil
    
    elsif @user["password"] = params["password"]
      flash["notice"] = "Login Successful"
      redirect_to "/posts"
    else
    flash["notice"] = "Nope."
    redirect_to "/login"
    end
  end
end
