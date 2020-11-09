class Hospital < ApplicationRecord
  validates_presence_of :name
  has_many :doctors

  def count_of_doctors
    self.doctors.count
  end

  def alumni
    self.doctors.select(:education).distinct.pluck(:education)
  end
end
