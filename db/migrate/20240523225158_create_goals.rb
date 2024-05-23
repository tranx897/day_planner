class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :category_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
