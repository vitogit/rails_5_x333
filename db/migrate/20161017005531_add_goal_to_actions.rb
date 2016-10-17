class AddGoalToActions < ActiveRecord::Migration[5.0]
  def change
    add_reference :actions, :goal, foreign_key: true
  end
end
