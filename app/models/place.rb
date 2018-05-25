class Place < ApplicationRecord
  has_many :adventures
  has_many :quests, through: :adventures # place.quests
end
