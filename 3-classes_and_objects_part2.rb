# ___________ CLASS METHODS _______________
# Class methods are methods we can call directly on the class itself.
# When defining a class method, we prepend the method name with the reserved word self.

# class GoodDog
#   def self.what_am_i
#     "I'm a GoodDog class!"
#   end
# end

# Use class methods when you don't need to keep track of states, otherwise use instances.


# ____________ CLASS VARIABLES _____________
# Use @@ for class variables


# class GoodDog
#   @@number_of_dogs = 0

#   def initialize
#     @@number_of_dogs += 1
#   end

#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end

#   def self.what_am_i
#     "I'm a GoodDog class!"
#   end
# end

# puts GoodDog.total_number_of_dogs
# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs


# _____________ CONSTANTS ____________
# Use capital letter for constants. Convention is to use ALL_CAPS

# class GoodDog
#   # Constant
#   DOG_YEARS = 7

#   # Class variable
#   @@number_of_dogs = 0

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#     @@number_of_dogs += 1
#   end

#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end

#   def self.what_am_i
#     "I'm a GoodDog class!"
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky.age


# _________ to_s  METHOD ________________
# When printing an object the to_s method implicitly called
# # In other words: puts sparky and puts sparky.to_s are equivalent.
# For arrays, when printing the object it prints each element's to_s method


class GoodDog
  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def to_s
    "This dog's name is #{name} and it is #{age} years old."
  end
end

sparky = GoodDog.new("Sparky", 28)
puts sparky

# p calls inspect method. Don't override that one!
p sparky

# to_s is what gets called for string interpolation.
# If you don't override to_s then it uses the inherited to_s (Usually Object#to_s)
# Make sure to_s always returns a string


# =begin
#   EXCERCISE 1
#   Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per gallon) of any car.


# =end


# class MyCar
#   attr_accessor :current_speed, :color
#   attr_reader :year

#   def initialize(y, c, m)
#     @year = y
#     @color = c
#     @model = m
#     @current_speed = 0
#   end

#   def self.get_gas_mileage(miles, gallons)
#     gas_mileage = miles / gallons
#     puts "Your gas mileage is #{gas_mileage}"
#     gas_mileage
#   end
#   def speed_up(add = 1)
#     self.current_speed += add
#     puts "Current speed is now #{current_speed}"
#   end

#   def brake(decrease = 1)
#     self.current_speed -= decrease
#     puts "Current speed is not #{current_speed}"
#   end

#   def shut_off
#     self.current_speed = 0
#     puts "Car is off. Current speed is #{current_speed}"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car is now #{color}!"
#   end
# end


=begin
EXERCISE 2
Override the to_s method to create a user friendly print out of your object.
=end


class MyCar
  attr_accessor :current_speed, :color
  attr_reader :year, :model

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def self.get_gas_mileage(miles, gallons)
    gas_mileage = miles / gallons
    puts "Your gas mileage is #{gas_mileage}"
    gas_mileage
  end
  def speed_up(add = 1)
    self.current_speed += add
    puts "Current speed is now #{current_speed}"
  end

  def brake(decrease = 1)
    self.current_speed -= decrease
    puts "Current speed is not #{current_speed}"
  end

  def shut_off
    self.current_speed = 0
    puts "Car is off. Current speed is #{current_speed}"
  end

  def spray_paint(color)
    self.color = color
    puts "Your car is now #{color}!"
  end

  def to_s
    "My car is a #{self.color} #{self.year} #{self.model}."
  end
end

car = MyCar.new(2000, "red", "Miata")
puts car
