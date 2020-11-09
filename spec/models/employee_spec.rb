require 'rails_helper'

describe Employee, type: :model do
  describe "verifications" do
    it { should validate_presence_of :hospital_id}
    it { should validate_presence_of :doctor_id}
  end

  describe "relationships" do
    it { should belong_to(:doctors) }
    it { should belong_to(:hospitals) }
  end
end
