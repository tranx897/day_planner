# == Schema Information
#
# Table name: journal_entries_feelings
#
#  id                      :integer          not null, primary key
#  feelings_level_1s_count :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  journal_entry_id        :integer
#
class JournalEntriesFeeling < ApplicationRecord
  belongs_to :journal_entry, required: true, class_name: "JournalEntry", foreign_key: "journal_entry_id", counter_cache: true
  has_many  :feelings_level_1s, class_name: "FeelingsLevel1", foreign_key: "journal_entry_feelings_id", dependent: :nullify
end
