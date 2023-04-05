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
      expect(vehicle.passengers).to eq([])
      expect(vehicle.num_adults).to eq(0)
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
  
  describe "passengers" do
    it "creturns the passengers in the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])
    end
  end
  
  describe "add_passenger" do
    it "can add passengers to the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      vehicle.add_passenger(charlie)    
      vehicle.add_passenger(jude)    
      vehicle.add_passenger(taylor)    

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
  
  describe "num_adults" do
    it "can verify the number of adults in the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      vehicle.add_passenger(charlie)    
      vehicle.add_passenger(jude)    
      vehicle.add_passenger(taylor)    

      expect(vehicle.num_adults).to eq(2)
    end
  end
end