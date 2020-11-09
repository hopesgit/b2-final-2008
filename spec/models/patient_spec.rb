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
end
