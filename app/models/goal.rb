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
end
