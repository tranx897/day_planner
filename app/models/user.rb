# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  categories_count       :integer
#  default_playlist       :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  journal_entries_count  :integer
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  time_zone              :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories, class_name: "Category", foreign_key: "user_id", dependent: :destroy
  has_many  :journal_entries, class_name: "JournalEntry", foreign_key: "user_id", dependent: :nullify
  has_many :tasks, through: :categories, source: :tasks
  has_many :goals, through: :categories, source: :goals

end
