class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty

  Mechanic.all << self
end

def self.all
  @@all
end

def cars
  Car.all.select do |x|
    # binding.pry
    x.mechanic == self
    # binding.pry
  end
end

def car_owners
  cars.map do |x|
    x.car_owner
  end
end

def car_owners_names
  car_owners.map do |x|
    x.name
  end
end



end
