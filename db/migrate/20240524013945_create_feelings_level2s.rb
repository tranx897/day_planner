class CreateFeelingsLevel2s < ActiveRecord::Migration[7.0]
  def change
    create_table :feelings_level2s do |t|
      t.string :name
      t.string :description
      t.integer :feeling_level1_id
      t.integer :feelings_level_3s_count

      t.timestamps
    end
  end
end
