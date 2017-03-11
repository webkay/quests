class Quest < ApplicationRecord
  has_many :adventures
  has_many :places, through: :adventures
  has_many :assignments
  has_many :users, through: :assignments
end
