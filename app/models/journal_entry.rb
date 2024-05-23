# == Schema Information
#
# Table name: journal_entries
#
#  id                             :integer          not null, primary key
#  date                           :string
#  journal_entries_feelings_count :integer
#  note                           :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  user_id                        :integer
#
class JournalEntry < ApplicationRecord
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id", counter_cache: true
  has_many  :journal_entries_feelings, class_name: "JournalEntriesFeeling", foreign_key: "journal_entry_id", dependent: :nullify
end
