class Company < ActiveRecord::Base
  has_many :users, dependent: :destroy
  validates :name, :phone_number, presence: true
  accepts_nested_attributes_for :users
end
