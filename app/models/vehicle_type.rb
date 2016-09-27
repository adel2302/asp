class VehicleType < ActiveRecord::Base
  has_many :availabilities
  validates :name, presence: true
end