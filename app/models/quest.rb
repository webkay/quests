class Quest < ApplicationRecord
  has_many :adventures
  has_many :places, through: :adventures
end
