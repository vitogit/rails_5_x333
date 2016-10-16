class Goal < ApplicationRecord
  has_many :actions
  belongs_to :sprint
end
