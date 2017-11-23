module CarHonkable
  def honk_horn
    puts "Beeeeeeep!"
  end
end

module BikeRingable
  def ring_bell
    puts "Ring ring!"
  end
end

class Car
  include CarHonkable
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Bike < Car
  include BikeRingable
  # def initialize
  #   @speed = 0
  #   @direction = 'north'
  # end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end


end

car = Car.new
p car

