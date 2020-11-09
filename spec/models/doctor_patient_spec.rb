require 'rails_helper'

describe DoctorPatient, type: :model do
  describe "verifications" do
    it { should validate_presence_of :patient_id}
    it { should validate_presence_of :doctor_id}
  end

  describe "relationships" do
    it { should belong_to(:doctor) }
    it { should belong_to(:patient) }
  end
end
