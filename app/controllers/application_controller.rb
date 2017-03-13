class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    unless signed_in?
      session[:redirect_to_url] = request.url
      redirect_to new_session_url
    end
  end

  def require_logout
    redirect_to root_url if signed_in?
  end

  def signed_in?
    session[:user_id].present?
  end
  helper_method :signed_in?
end
