class Adventure < ApplicationRecord
  belongs_to :quest
  belongs_to :place
end
