class Availability < ActiveRecord::Base
  belongs_to :driver
  belongs_to :vehicle_type
  validates :vehicle_type, presence: true
  validates :hour_start, presence: true
  validates :hour_end, presence: true
  validates :date, presence: true
end
