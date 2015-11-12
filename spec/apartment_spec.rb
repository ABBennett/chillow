require 'spec_helper'

describe Apartment do
  let(:apartment) {Apartment.new("33 Harrison", "Boston", "02108", "$400,000", "$1000", "2015/09/01", "2016/09/01")}
  describe ".new" do
    it "is a pending example" do
      expect(apartment).to be_a(Apartment)
    end
  end

  describe "#rent" do
    it "should return rent" do
      expect(apartment.rent).to eq("$1000")
    end
  end

  describe "#lease_end_date" do
    it "should return the end date of lease" do
      expect(apartment.lease_end_date).to eq("2016/09/01")
    end
  end

  describe "#lease_start_date" do
    it "should return the start date of lease" do
      expect(apartment.lease_start_date).to eq("2015/09/01")
    end
  end

  describe "#full?" do
    it "should return false when Apartment is first initialized" do
      expect(apartment.full?).to eq(false)
      expect(apartment.occupants.length).to eq(0)
    end
  end

  describe "#add_roommate" do
    it "should add a roomate to the apartment" do
      apartment.add_roommate("Sally", "Chu")
      expect(apartment.occupants.length).to eq(1)
      expect(apartment.occupants[0].first_name).to eq("Sally")
      expect(apartment.occupants[0].last_name).to eq("Chu")
    end
  end
  describe "#remove_roommate" do
    it "should remove a roomate to the apartment" do
      apartment.add_roommate("Sally", "Chu")
      expect(apartment.occupants.length).to eq(1)
      expect(apartment.occupants[0].first_name).to eq("Sally")
      expect(apartment.occupants[0].last_name).to eq("Chu")
      apartment.remove_roommate("Sally", "Chu")
      expect(apartment.occupants.length).to eq(0)
    end
  end

end
