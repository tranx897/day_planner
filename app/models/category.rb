# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  color       :string
#  goals_count :integer
#  name        :string
#  tasks_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Category < ApplicationRecord
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id", counter_cache: true
  has_many  :tasks, class_name: "Task", foreign_key: "category_id", dependent: :nullify
  has_many  :goals, class_name: "Goal", foreign_key: "category_id", dependent: :nullify
end
