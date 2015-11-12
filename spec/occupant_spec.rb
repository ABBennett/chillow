require 'spec_helper'

describe Occupant do
  let(:occupant) {Occupant.new("Alex", "Bennett")}
  describe ".new" do
  it "is a pending example" do
    expect(occupant).to be_a(Occupant)
  end
end

  describe "#first_name and #last_name" do
    it "has a first and last name" do
      expect(occupant.first_name).to eq("Alex")
      expect(occupant.last_name).to eq("Bennett")
    end
  end
end
