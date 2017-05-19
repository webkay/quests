module ApplicationHelper

  def take_button(quest)
    if quest.taken_by?(current_user)
      button_to "Cancel", unassign_quest_path(quest)
    else
      button_to "Take", assign_quest_path(quest)
    end
  end
end
