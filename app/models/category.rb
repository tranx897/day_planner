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
end
