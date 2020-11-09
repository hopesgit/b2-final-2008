require 'rails_helper'

describe Patient, type: :model do
  describe "relationships" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
  end

  describe "relationships" do
    it { should have_many(:doctors).through(:doctor_patients)}
    it { should have_many(:doctor_patients)}
  end

  describe "class methods" do
    before :each do
      @katie = Patient.create(name: "Katie Bryce", age: 24)
      @denny = Patient.create(name: "Denny Duquette", age: 39)
      @rebecca = Patient.create(name: "Rebecca Pope", age: 32)
      @zola = Patient.create(name: "Zola Shepherd", age: 2)
    end

    it ".order_by_age" do
      expect(Patient.order_by_age[0]).to eq(@zola)
      expect(Patient.order_by_age[1]).to eq(@katie)
      expect(Patient.order_by_age[2]).to eq(@rebecca)
      expect(Patient.order_by_age[3]).to eq(@denny)
    end
  end
end
