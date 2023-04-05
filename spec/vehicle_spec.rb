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
      expect(vehicle.speeding).to be false
    end
  end
  
  describe "speeding?" do
    it "checks if the vehicle is speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to be false
    end
  end
  
  describe "speed" do
    it "make the vehicle speed" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to be false
      
      vehicle.speed

      expect(vehicle.speeding?).to be true
    end
  end
  
  describe "passenger" do
    it "checks the number of passengers in the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])
    end
  end
end