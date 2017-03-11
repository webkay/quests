class User < ApplicationRecord
  has_secure_password
  has_many :assignments
  has_many :quests, through: :assignments
end
