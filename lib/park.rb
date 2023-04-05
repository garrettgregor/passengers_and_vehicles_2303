class Park
  attr_reader :name,
              :admission_price,
              :vehicles,
              :passengers,
              :revenue
  def initialize(name, admission_price)
    @name             = name
    @admission_price  = admission_price
    @vehicles         = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    vehicles.map do |vehicle|
      vehicle.passengers
    end.flatten
  end

  def revenue
    admission_price * passengers.count
  end

  def all_attendees
    passengers.map do |passenger|
      passenger.name
    end
  end
end