class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :status
      t.integer :category_id

      t.timestamps
    end
  end
end
