class Quest < ApplicationRecord
  has_many :adventures
  has_many :places, through: :adventures # quest.places

  # doesn't need quest.users (yet)

  def add_user(user)
    users << user
  end

  def taken_by?(user)
    user.quests.include? self
  end
end
