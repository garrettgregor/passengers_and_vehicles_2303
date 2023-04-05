require "./lib/passenger"
require "./lib/vehicle"
require "rspec"

RSpec.describe Passenger do
  describe "initialize" do
    it "exist and has attributes" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_a(Vehicle)
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end
end