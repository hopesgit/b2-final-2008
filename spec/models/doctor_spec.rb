require 'rails_helper'

describe Doctor, type: :model do
  describe "verifications" do
    it { should validate_presence_of :name}
    it { should validate_presence_of :specialty}
    it { should validate_presence_of :education}
  end

  describe "relationships" do
    it { should belong_to(:hospital).through(:employees) }
    it { should have_many :doctor_patients }
    it { should have_many(:patients).through(:doctor_patients) }
  end
end