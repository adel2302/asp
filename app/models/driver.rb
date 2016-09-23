class Driver < ActiveRecord::Base
  belongs_to :company
  has_many :availabilities
end
