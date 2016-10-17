class Action < ApplicationRecord
  belongs_to :goal, inverse_of: :actions
end
