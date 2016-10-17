class Sprint < ApplicationRecord
  has_many :goals, inverse_of: :sprint
  accepts_nested_attributes_for :goals
end
