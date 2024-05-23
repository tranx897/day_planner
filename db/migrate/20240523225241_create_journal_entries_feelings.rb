class CreateJournalEntriesFeelings < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries_feelings do |t|
      t.integer :journal_entry_id
      t.integer :feelings_level_1s_count

      t.timestamps
    end
  end
end
