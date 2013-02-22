class SessionsController < ApplicationController

  def new
    redirect_back_or '/main/index' if signed_in?
  end

  def create
    user = User.find_by_username(params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or '/main/index'
    else
      flash.now[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    sign_out
    render 'new'
  end
end