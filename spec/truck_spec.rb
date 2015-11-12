require 'spec_helper'

describe Truck do
  let(:truck) {Truck.new(20)}
  describe ".new" do
    it "is a pending example" do
      expect(truck).to be_a(Truck)
    end
  end
  
  describe "#full?" do
    it "should return false when truck is first initialized" do
      expect(truck.full?).to eq(false)
      expect(truck.boxes.length).to eq(0)
    end
  end

  describe "#add" do
    it "should add a box to the truck" do
      truck.add("Sally", "Chu")
      expect(truck.boxes.length).to eq(1)
      expect(truck.boxes[0].first_name).to eq("Sally")
      expect(truck.boxes[0].last_name).to eq("Chu")
    end
  end
  describe "#remove" do
    it "should remove a box to the truck" do
      truck.add("Sally", "Chu")
      expect(truck.boxes.length).to eq(1)
      expect(truck.boxes[0].first_name).to eq("Sally")
      expect(truck.boxes[0].last_name).to eq("Chu")
      truck.remove("Sally", "Chu")
      expect(truck.boxes.length).to eq(0)
    end
  end

end
