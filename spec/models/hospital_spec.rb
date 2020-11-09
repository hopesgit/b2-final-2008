require 'rails_helper'

describe Hospital, type: :model do
  describe "verifications" do
    it { should validate_presence_of :name}
  end

  describe "relationships" do
    it { should have_many :doctors }
  end

  describe "instance methods" do
    before :each do
      @memorial = Hospital.create(name: "Grey Sloan Memorial Hospital")
      @meredith = Doctor.create(name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", hospital_id: @memorial.id)
      @alex = Doctor.create(name: "Alex Karev", specialty: "Pediatric Surgery", education: "Harvard University", hospital_id: @memorial.id)
    end

    it "#count_of_doctors" do
      expect(@memorial.count_of_doctors).to eq(2)
    end

    it "#alumni" do
      expect(@memorial.alumni).to eq(["Harvard University"])
      expect(@memorial.alumni).to_not eq(["Harvard University, Harvard University"])
    end
  end
end
