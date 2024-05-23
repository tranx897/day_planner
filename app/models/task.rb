# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  end_time    :datetime
#  start_time  :datetime
#  status      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
class Task < ApplicationRecord
end
