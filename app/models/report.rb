class Report < ApplicationRecord
  validates :title, :message, presence: true

  has_many :report_users
  has_many :users, through: :report_users
  has_many :messages

  def show_last_message
    if (last_message = messages.last).present?
      if last_message.content.size > 10
        last_message.content.slice(0,10) + '...'
      else
        last_message.content
      end
    else
      'まだメッセージはありません。'
    end
  end

end
