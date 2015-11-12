require 'spec_helper'

describe Dwelling do
  let(:dwelling) {Dwelling.new("33 Harrison", "Boston", "02108" )}
    describe ".new" do
    it "is a pending example" do
      expect(dwelling).to be_a(Dwelling)
    end
  end

  describe "#address" do
    it "should have and address" do
      expect(dwelling.address).to eq("33 Harrison")
    end

    it "should have a city default to Boston" do
      expect(dwelling.city).to eq("Boston")
    end

    it "should have a zipcode" do
      expect(dwelling.zip_code).to eq("02108")
    end
  end
end
