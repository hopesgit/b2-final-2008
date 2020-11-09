class DoctorPatient < ApplicationRecord
  validates_presence_of :doctor_id
  validates_presence_of :patient_id
  belongs_to :doctor
  belongs_to :patient
end
