class SessionsController < ApplicationController
  before_action :require_logout, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by session_params.extract!(:name)
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to session.fetch(:redirect_to_url, root_url)
    else
      render 'new'
    end
  end

  private

  def session_params
    params.require(:session).permit(:name, :password)
  end
end
