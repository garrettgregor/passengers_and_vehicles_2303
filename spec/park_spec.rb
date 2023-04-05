require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"
require "rspec"

RSpec.describe Park do
  describe "initialize" do
    it "exists and has attributes" do
      yosemite = Park.new("Yosemite", 50)

      expect(yosemite).to be_a(Park)
      expect(yosemite.name).to be_a(String)
      expect(yosemite.name).to eq("Yosemite")
      expect(yosemite.admission_price).to be_an(Integer)
      expect(yosemite.admission_price).to eq(50)
      expect(yosemite.vehicles).to eq([])
    end
  end
  
  describe "add_vehicle" do
    it "can collect the vehicles that enter the park" do
      yosemite = Park.new("Yosemite", 50)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")

      yosemite.add_vehicle(vehicle1)

      expect(yosemite.vehicles).to be_an(Array)
      expect(yosemite.vehicles).to eq([vehicle1])
    end
  end
  
  describe "passengers" do
    it "can collect the number of passengers that entered the park" do
      yosemite = Park.new("Yosemite", 50)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      vehicle.add_passenger(charlie)    
      vehicle.add_passenger(jude)    
      vehicle.add_passenger(taylor)    
      yosemite.add_vehicle(vehicle)

      expect(yosemite.vehicles).to be_an(Array)
      expect(yosemite.vehicles).to eq([vehicle])
      expect(yosemite.passengers).to eq([charlie, jude, taylor])
    end
    
    it "can collect the multiple cars passengers that entered the park" do
      yosemite = Park.new("Yosemite", 50)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      
      vehicle1.add_passenger(charlie)    
      vehicle1.add_passenger(jude)    
      vehicle1.add_passenger(taylor)    
      yosemite.add_vehicle(vehicle1)
      
      vehicle2 = Vehicle.new("2019", "Tesla", "Model 3")
      passenger2a = Passenger.new({"name" => "Johnny", "age" => 20})    
      passenger2b = Passenger.new({"name" => "Bobby", "age" => 22})    
      passenger2c = Passenger.new({"name" => "Billy", "age" => 14}) 
      
      vehicle2.add_passenger(passenger2a)    
      vehicle2.add_passenger(passenger2b)    
      vehicle2.add_passenger(passenger2c)    
      yosemite.add_vehicle(vehicle2)
      
      expect(yosemite.vehicles).to eq([vehicle1, vehicle2])
      expect(yosemite.passengers).to eq([charlie, jude, taylor, passenger2a, passenger2b, passenger2c])
    end
  end

  describe "revenue" do
    it "collects revenue for all passengers that came into the park" do
      yosemite = Park.new("Yosemite", 50)
      
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      jude = Passenger.new({"name" => "Jude", "age" => 20})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
      vehicle1.add_passenger(charlie)    
      vehicle1.add_passenger(jude)    
      vehicle1.add_passenger(taylor)    
      yosemite.add_vehicle(vehicle1)

      vehicle2 = Vehicle.new("2019", "Tesla", "Model 3")
      passenger2a = Passenger.new({"name" => "Johnny", "age" => 20})    
      passenger2b = Passenger.new({"name" => "Bobby", "age" => 22})    
      passenger2c = Passenger.new({"name" => "Billy", "age" => 14}) 
      vehicle2.add_passenger(passenger2a)    
      vehicle2.add_passenger(passenger2b)    
      vehicle2.add_passenger(passenger2c)    
      yosemite.add_vehicle(vehicle2)
      
      expect(yosemite.revenue).to be_an(Integer)
      expect(yosemite.revenue).to eq(300)
    end
  end
end