require 'rails_helper'

describe "As a visitor" do
  describe "When I visit the patient index page" do
    before :each do
      @memorial = Hospital.create(name: "Grey Sloan Memorial Hospital")
      @meredith = Doctor.create(name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", hospital_id: @memorial.id)
      @katie = @meredith.patients.create(name: "Katie Bryce", age: 24)
      @denny = @meredith.patients.create(name: "Denny Duquette", age: 39)
      @rebecca = @meredith.patients.create(name: "Rebecca Pope", age: 32)
      @zola = @meredith.patients.create(name: "Zola Shepherd", age: 2)
    end

    it "sorts the patients from oldest to youngest" do
      visit patients_path

      within("#patient-#{@zola.id}") do
        expect(page).to have_content(@zola.name)
        expect(page).to have_content(@zola.age)
      end

      within("#patient-#{@katie.id}") do
        expect(page).to have_content(@katie.name)
        expect(page).to have_content(@katie.age)
      end

      within("#patient-#{@rebecca.id}") do
        expect(page).to have_content(@rebecca.name)
        expect(page).to have_content(@rebecca.age)
      end

      within("#patient-#{@denny.id}") do
        expect(page).to have_content(@denny.name)
        expect(page).to have_content(@denny.age)
      end

      expect(page.text.index("Name: Zola")).to be < (page.text.index("Name: Katie"))

    end
  end
end
