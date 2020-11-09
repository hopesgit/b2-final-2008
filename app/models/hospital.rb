class Hospital < ApplicationRecord
  validates_presence_of :name
  has_many :employees
  has_many :doctors
end
