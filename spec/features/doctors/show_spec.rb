require 'rails_helper'

describe "As a visitor" do
  describe "When I visit a doctor's show page" do
    before :each do
      @memorial = Hospital.create(name: "Grey Sloan Memorial Hospital")
      @meredith = Doctor.create(name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", hospital_id: @memorial.id)
      @katie = @meredith.patients.create(name: "Katie Bryce", age: 24)
      @denny = @meredith.patients.create(name: "Denny Duquette", age: 39)
      @rebecca = @meredith.patients.create(name: "Rebecca Pope", age: 32)
      @zola = @meredith.patients.create(name: "Zola Shepherd", age: 2)
    end

    it "I see all of that doctor's info" do
      visit doctor_path(@meredith)

      expect(page).to have_content(@meredith.name)
      expect(page).to have_content(@meredith.specialty)
      expect(page).to have_content(@meredith.education)
      expect(page).to have_content(@memorial.name)
      expect(page).to have_content(@katie.name)
      expect(page).to have_content(@denny.name)
      expect(page).to have_content(@rebecca.name)
      expect(page).to have_content(@zola.name)
    end

    it "I have the option to remove a patient from the doctor's caseload" do
      visit doctor_path(@meredith)

      within "#patient-#{@katie.id}" do
        expect(page).to have_button("Remove")
      end

      within "#patient-#{@denny.id}" do
        expect(page).to have_button("Remove")
      end

      within "#patient-#{@rebecca.id}" do
        expect(page).to have_button("Remove")
      end

      within "#patient-#{@zola.id}" do
        expect(page).to have_button("Remove")
      end
    end

    it "when the button is clicked, it removes that patient from the doctor's caseload" do
      visit doctor_path(@meredith)

      within "#patient-#{@katie.id}" do
        expect(page).to have_button("Remove")
        click_button("Remove")
      end

      expect(current_path).to eq(doctor_path(@meredith))
      expect(page).to_not have_content(@katie.name)
      expect(page).to have_content(@zola.name)
      expect(page).to have_content(@denny.name)
      expect(page).to have_content(@rebecca.name)
    end
  end
end
