class QuestsController < ApplicationController
  def index
    @quests = Quest.all
  end

  def assignment
    @quest = Quest.find(params[:id])
    @user = current_user
    @quest.users.push(@user)
    redirect_to @user
  end
end
