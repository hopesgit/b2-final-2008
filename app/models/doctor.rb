class Doctor < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :specialty
  validates_presence_of :education
  has_many :doctor_patients
  belongs_to :hospital
  has_many :patients, through: :doctor_patients
end
