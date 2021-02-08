class Task < ApplicationRecord
  belongs_to :user

  with_options presence: true do
  validates :name
  validates :info
  validates :event_date
  end
end
