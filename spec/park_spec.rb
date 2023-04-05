require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"
require "rspec"

RSpec.describe Park do
  describe "initialize" do
    it "exists and has attributes" do
      yosemite = Park.new("Yosemite", 50)

      expect(yosemite).to be_a(Park)
      expect(yosemite.name).to eq("Yosemite")
      expect(yosemite.admission_price).to eq(50)
      expect(yosemite.vehicles).to eq([])
    end
  end
  
  describe "add_vehicle" do
    it "can collect the vehicles that enter the park" do
      yosemite = Park.new("Yosemite", 50)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")

      yosemite.add_vehicle(vehicle1)

      expect(yosemite.vehicles).to eq([vehicle1])
    end
  end
end