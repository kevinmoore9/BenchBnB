class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      login(@user)
      render "api/users/show"
    else
      render json: ["invalid login credentials"], status: 401
    end
    debugger
  end

  def destroy
    user = @current_user
    debugger
    if user
      user.logout
      render "api/users/show"
    else
      render json: ["nobody is currently logged in"], status: 404
    end
  end

end
