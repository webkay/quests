class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(name: session_params[:name]).first
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to session.fetch :redirect_to_url, root_url
    else
      render 'new'
    end
  end

  private

  def session_params
    params.permit(:name, :password)
  end
end
