class Goal < ApplicationRecord
  has_many :actions, inverse_of: :goal
  belongs_to :sprint, inverse_of: :goals
  accepts_nested_attributes_for :actions

  before_save :assign_sibling
  
  def sibling
    Goal.find_by_id(self.sibling_id)
  end
  
  def assign_sibling
    goal = Goal.find_by_name(self.name)
    self.sibling_id = goal.id if goal.present?
  end
  
  #how many times a goal showup in the sprints
  def sprints_showups
    if self.sibling_id 
      Goal.where(sibling_id: self.sibling_id).count + 1 #add the parent
    else
      Goal.where(sibling_id: self.id).count #it's the parent
    end
  end
  
end
