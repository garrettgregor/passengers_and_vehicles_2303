require "./lib/passenger"
require "rspec"

RSpec.describe Passenger do
  describe "initialize" do
    it "exists and has attributes" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(charlie).to be_a(Passenger)
      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
      expect(charlie.driver).to be false
    end
  end

  describe "adult?" do
    it "can check if the passenger is an adult" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.adult?).to be true
      expect(taylor.adult?).to be false
    end
  end
  
  describe "driver?" do
    it "can check if the passenger is the driver" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.driver?).to be false
    end
  end
  
  describe "drive" do
    it "can change the passenger to be the driver" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.driver?).to be false
      
      charlie.drive
      
      expect(charlie.driver?).to be true
    end
  end
end