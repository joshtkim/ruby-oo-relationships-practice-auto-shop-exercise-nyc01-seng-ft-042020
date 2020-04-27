class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    Car.all << self
  end

  def self.all
    @@all
  end

  def self.class
    Car.all.map do |x|
      x.classification
    end.uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select do |x|
      x.specialty == classification
    end
  end


end
