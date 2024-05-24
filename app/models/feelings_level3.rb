# == Schema Information
#
# Table name: feelings_level3s
#
#  id                :integer          not null, primary key
#  description       :string
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  feeling_level2_id :integer
#
class FeelingsLevel3 < ApplicationRecord
  belongs_to :feeling_level2, class_name: "FeelingsLevel2", foreign_key: "feeling_level2_id", counter_cache: true
end
