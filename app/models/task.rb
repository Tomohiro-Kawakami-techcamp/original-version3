class Task < ApplicationRecord
  belongs_to :user
  has_many :appoints

  with_options presence: true do
  validates :name
  validates :info
  validates :event_date
  end
end
