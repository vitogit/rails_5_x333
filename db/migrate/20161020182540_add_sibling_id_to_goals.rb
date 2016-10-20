class AddSiblingIdToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :sibling_id, :integer
  end
end
