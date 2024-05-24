class FeelingsLevel2 < ApplicationRecord
  belongs_to :feeling_level1, class_name: "FeelingsLevel1", foreign_key: "feeling_level1_id", counter_cache: true
  has_many  :feelings_level_3s, class_name: "FeelingsLevel3", foreign_key: "feeling_level2_id", dependent: :nullify
end
