class QuestsController < ApplicationController
  def index
    @quests = Quest.all
  end

  def assign
    @quest = Quest.find(params[:id])
    @assignment = @quest.assignments.build user: current_user

    if @assignment.save
      redirect_to user_url(current_user)
    else
      redirect_to quests_url
    end
  end

  def unassign
    @quest = Quest.find(params[:id])
    assignment = @quest.assignments.find_by user: current_user

    assignment.destroy
    redirect_to quests_url
  end
end
