class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries do |t|
      t.integer :user_id
      t.string :date
      t.string :note
      t.integer :journal_entries_feelings_count

      t.timestamps
    end
  end
end
