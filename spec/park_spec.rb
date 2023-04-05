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


end