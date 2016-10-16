class AddActionToGoal < ActiveRecord::Migration[5.0]
  def change
    add_reference :goals, :action, foreign_key: true
  end
end
