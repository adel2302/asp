class Company < ActiveRecord::Base
  validates :name, :phone_number, presence: true
end
