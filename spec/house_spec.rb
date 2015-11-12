require 'spec_helper'


describe House do
  let(:house) {House.new("33 Harrison", "Boston", "02108", "$400,000" )}
    describe ".new" do
    it "is a pending example" do
      expect(house).to be_a(House)
    end
  end

  describe "#address" do
    it "should have and address" do
      expect(house.address).to eq("33 Harrison")
    end

    it "should have a city default to Boston" do
      expect(house.city).to eq("Boston")
    end

    it "should have a zipcode" do
      expect(house.zip_code).to eq("02108")
    end

    it "should have an asking price" do
      expect(house.asking_price).to eq("$400,000")
    end
  end
end
