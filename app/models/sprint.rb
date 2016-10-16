class Sprint < ApplicationRecord
  has_many :goals
  accepts_nested_attributes_for :goals
end
