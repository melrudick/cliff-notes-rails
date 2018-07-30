class UsersController < ApplicationController
skip_before_action :require_login, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to locations_path
    else
      render :new
    end
  end

  private

# def user_params
#   params.require(:user).permit(:username, :password_digest)
# end
end
