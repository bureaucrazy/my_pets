class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_email params[:email]

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Signed in successfully!"
    else
      # redirect_to root_path
      redirect_to :back
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out successfully!"
  end
end
