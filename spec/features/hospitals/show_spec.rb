require 'rails_helper'

describe "As a visitor" do
  describe "When I visit a doctor's show page" do
    it "I see all of that doctor's info" do
      memorial = Hospital.create(name: "Grey Sloan Memorial Hospital")
      meredith = Doctor.create(name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", hospital_id: memorial.id)
      alex = Doctor.create(name: "Alex Karev", specialty: "Pediatric Surgery", education: "Harvard University", hospital_id: memorial.id)
      visit hospital_path(meredith)

      expect(page).to have_content(meredith.education)
      expect(page).to have_content(alex.education)
      expect(page).to have_content(memorial.name)
      expect(page).to have_content("Doctors working at this hospital: 2")
      expect(page).to_not have_content("Universities our doctors attended: Harvard University, Harvard University")
    end
  end
end
