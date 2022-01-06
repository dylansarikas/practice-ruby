# class Car
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def honk_horn
#     puts "Beeeeeeep!"
#   end
# end

# class Bike
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def ring_bell
#     puts "Ring ring!"
#   end
# end

class Vehicle
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

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

my_bike = Bike.new()
my_car = Car.new()
my_bike.accelerate
my_car.accelerate
my_bike.ring_bell
my_car.honk_horn