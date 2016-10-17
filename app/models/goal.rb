class Goal < ApplicationRecord
  has_many :actions, inverse_of: :goal
  belongs_to :sprint, inverse_of: :goals
  accepts_nested_attributes_for :actions
end
