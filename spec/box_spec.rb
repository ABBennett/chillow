require 'spec_helper'

describe Box do
  let(:box) {Box.new("Alex", "Bennett")}
  describe ".new" do
  it "is a pending example" do
    expect(box).to be_a(Box)
  end
end

  describe "#first_name and #last_name" do
    it "has a first and last name" do
      expect(box.first_name).to eq("Alex")
      expect(box.last_name).to eq("Bennett")
    end
  end
end
