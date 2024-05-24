class FeelingsLevel3 < ApplicationRecord
  belongs_to :feeling_level2, class_name: "FeelingsLevel2", foreign_key: "feeling_level2_id", counter_cache: true
end
