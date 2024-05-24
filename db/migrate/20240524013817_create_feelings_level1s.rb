class CreateFeelingsLevel1s < ActiveRecord::Migration[7.0]
  def change
    create_table :feelings_level1s do |t|
      t.string :name
      t.string :description
      t.integer :journal_entry_feelings_id
      t.integer :feelings_level_2s_count

      t.timestamps
    end
  end
end
