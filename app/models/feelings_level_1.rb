class FeelingsLevel1 < ApplicationRecord
  has_many  :feelings_level_2s, class_name: "FeelingsLevel2", foreign_key: "feeling_level1_id", dependent: :nullify
  belongs_to :journal_entry_feelings, class_name: "JournalEntriesFeeling", foreign_key: "journal_entry_feelings_id", counter_cache: true
end
