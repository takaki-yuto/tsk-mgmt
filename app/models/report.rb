class Report < ApplicationRecord
  validates :title, :message, presence: true

  has_many :report_users
  has_many :users, through: :report_users
  has_many :messages
end
