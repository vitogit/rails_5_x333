class CreateSprints < ActiveRecord::Migration[5.0]
  def change
    create_table :sprints do |t|
      t.text :name
      t.boolean :completed

      t.timestamps
    end
  end
end
