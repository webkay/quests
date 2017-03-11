class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    session[:redirect_to_url] = request.url
    redirect_to new_session_url unless current_user
  end
end
