class Hospital < ApplicationRecord
  validates_presence_of :name
  has_many :employees
  has_many :doctors

  def count_of_doctors
    self.doctors.count
  end
end
