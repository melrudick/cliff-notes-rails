class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  before_action :require_login, :except => [:home]

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= user = User.find(session[:user_id]) if session[:user_id]
  end

  def home
    render 'home/homepage'
  end

  def require_login
    unless current_user
      redirect_to '/'
    end
  end
end
