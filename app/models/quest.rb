class Quest < ApplicationRecord
  has_many :adventures
  has_many :places, through: :adventures
  has_many :assignments
  has_many :users, through: :assignments

  def add_user(user)
    users << user
  end

  def taken_by?(user)
    user.quests.include? self
  end
end
