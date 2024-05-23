# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  end_date    :datetime
#  name        :string
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
class Goal < ApplicationRecord
  belongs_to :category, class_name: "Category", foreign_key: "category_id", counter_cache: true
  has_one  :user, through: :category, source: :user
end
