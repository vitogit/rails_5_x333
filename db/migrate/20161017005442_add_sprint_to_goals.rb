class AddSprintToGoals < ActiveRecord::Migration[5.0]
  def change
    add_reference :goals, :sprint, foreign_key: true
  end
end
