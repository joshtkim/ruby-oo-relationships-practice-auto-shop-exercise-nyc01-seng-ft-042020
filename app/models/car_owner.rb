class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  def self.all
    @@all 
  end

  def cars
    Car.all.select do |x|
      # binding.pry
      x.car_owner == self
      # binding.pry
    end
  end

  def mechanics
      cars.map do |x|
      # binding.pry
      x.mechanic
      # binding.pry
    end.uniq
  end

  def self.average_number_of_cars
    total_owners = self.all.count
    total_cars = 0
    self.all.each do |car_owner|
      total_cars = total_cars + car_owner.cars.count
    end
    total_cars/total_owners
  end

end
