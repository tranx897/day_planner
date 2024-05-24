class CreateFeelingsLevel3s < ActiveRecord::Migration[7.0]
  def change
    create_table :feelings_level3s do |t|
      t.string :name
      t.string :description
      t.integer :feeling_level2_id

      t.timestamps
    end
  end
end
