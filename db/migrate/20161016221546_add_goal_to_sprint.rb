class AddGoalToSprint < ActiveRecord::Migration[5.0]
  def change
    add_reference :sprints, :goal, foreign_key: true
  end
end
