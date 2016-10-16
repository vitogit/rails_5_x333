class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.text :name
      t.boolean :completed

      t.timestamps
    end
  end
end
