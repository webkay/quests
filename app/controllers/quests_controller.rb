class QuestsController < ApplicationController
  def index
    @quests = Quest.all
  end

  def assignment
    @quest = Quest.find(params[:id])
    @assignment = @quest.assignments.build user: current_user

    if @assignment.save
      redirect_to user_url(current_user)
    else
      @quests = Quest.all
      render 'index'
    end
  end
end
