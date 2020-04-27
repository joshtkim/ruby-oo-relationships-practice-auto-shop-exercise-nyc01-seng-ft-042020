require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Mom")
owner2 = CarOwner.new("Dad")
owner3 = CarOwner.new("Josh")
mech1 = Mechanic.new("Josh", "clunker")
mech2 = Mechanic.new("Jessica", "antique")
mech3 = Mechanic.new("Sonia", "exotic")
car1 = Car.new("Toyota", "Camry", "Sedan", owner1, mech1)
car2 = Car.new("Honda", "Passport", "SUV", owner2, mech2)
car3 = Car.new("Honda", "Genesis", "Luxury", owner3, mech3)
car4 = Car.new("Toyota", "Corolla", "Sedan", owner3, mech1)
car5 = Car.new("Honda", "Pilot", "SUV", owner2, mech2)
car6 = Car.new("BMW", "Fancy BMW", "Luxury", owner1, mech3)


binding.pry
