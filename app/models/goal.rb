class Goal < ApplicationRecord
  has_many :actions
  belongs_to :sprint
  accepts_nested_attributes_for :actions
end
