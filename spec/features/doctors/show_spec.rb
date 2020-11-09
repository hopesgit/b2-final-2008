require 'rails_helper'

describe "As a visitor" do
  describe "When I visit a doctor's show page" do
    it "I see all of that doctor's info" do
      memorial = Hospital.create(name: "Grey Sloan Memorial Hospital")
      meredith = Doctor.create(name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", hospital_id: memorial.id)
      katie = meredith.patients.create(name: "Katie Bryce", age: 24)
      denny = meredith.patients.create(name: "Denny Duquette", age: 39)
      rebecca = meredith.patients.create(name: "Rebecca Pope", age: 32)
      zola = meredith.patients.create(name: "Zola Shepherd", age: 2)
      visit doctor_path(meredith)

      expect(page).to have_content(meredith.name)
      expect(page).to have_content(meredith.specialty)
      expect(page).to have_content(meredith.education)
      expect(page).to have_content(memorial.name)
      expect(page).to have_content(katie.name)
      expect(page).to have_content(denny.name)
      expect(page).to have_content(rebecca.name)
      expect(page).to have_content(zola.name)
    end
  end
end
