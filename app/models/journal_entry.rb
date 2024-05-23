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
end
