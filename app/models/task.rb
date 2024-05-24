# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  end_time    :datetime
#  name        :string
#  start_time  :datetime
#  status      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
class Task < ApplicationRecord
  belongs_to :category, required: true, class_name: "Category", foreign_key: "category_id", counter_cache: true
  has_one  :user, through: :category, source: :user

  scope :finished, -> { where status: [true] }
  scope :unfinished, -> { where status: [false] }
end
