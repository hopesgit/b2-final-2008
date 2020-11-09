require 'rails_helper'

describe Hospital, type: :model do
  describe "verifications" do
    it { should validate_presence_of :name}
  end

  describe "relationships" do
    it { should have_many :doctors }
  end
end
