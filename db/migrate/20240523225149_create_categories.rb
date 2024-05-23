class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :color
      t.integer :user_id
      t.integer :tasks_count
      t.integer :goals_count

      t.timestamps
    end
  end
end
