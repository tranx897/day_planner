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
end
