# =begin
#   Inheritance, we use the < symbol to show that the subclass is inheriting from the superclass.
# =end


# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n
#   end
#   def speak                 # <- Overrides the inherited speak method
#     "#{self.name} says Arf!"
#   end
# end

# class Cat < Animal
# end

# sparky = GoodDog.new("Sparky")
# paws = Cat.new

# puts sparky.speak
# puts paws.speak


=begin
  You can use super to access the superclass's method.
=end

# class Animal
#   def speak
#     "Hello"
#   end
# end

# class GoodDog < Animal
#   def speak
#     super + ". Have a nice day!"
#   end
# end

# sparky = GoodDog.new
# puts sparky.speak


=begin
__________________ SIDE EFFECT _______________________
If using a super method and the super method requires a parameter, the parameter
of the calling method will be used.
=end
# class Animal
#   def initialize(n)
#     @name = n
#   end
# end

# class GoodDog < Animal
#   def initialize(c)
#     super
#     @color = c
#   end
# end

# sparky = GoodDog.new("brown")
# p sparky      #<GoodDog:0x00007a611e509610 @name="brown", @color="brown">

#If you want to use a different paremeter for super than from the subclass, use two parameters

# class Animal
#   def initialize(n)
#     @name = n
#   end
# end

# class GoodDog < Animal
#   def initialize(n, c)
#     super(n)
#     @color = c
#   end
# end

# sparky = GoodDog.new("Sparky", "brown")
# p sparky


# To avoid the side effect, just add empty parentheses.
# class Animal
#   def initialize
#   end
# end

# class BadDog < Animal
#   def initialize(n)
#     super()         # <- Like this
#     @name = n
#   end
# end

# sparky = BadDog.new("sparky")
# p sparky


=begin
EXERCISE 1
Create a superclass called Vehicle for your MyCar class to inherit from and
move the behavior that isn't specific to the MyCar class to the superclass.
Create a constant in your MyCar class that stores information about the vehicle
that makes it different from other types of Vehicles.

Then create a new class called MyTruck that inherits from your superclass
that also has a constant defined that separates it from the MyCar class in
some way.

EXERCISE 2
Add a class variable to your superclass that can keep track of the number of
objects created that inherit from the superclass. Create a method to print
out the value of this class variable as well.

EXERCISE 3
Create a module that you can mix in to ONE of your subclasses that describes a
behavior unique to that subclass.

=end
module Raceable
  def race
    puts "3...2...1... Go!"
    self.speed_up 100
  end
end

class Vehicle
  attr_accessor :current_speed, :color
  attr_reader :year, :model

  @@number_of_vehicles = 0

  include Raceable

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    @@number_of_vehicles
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
end

class MyCar < Vehicle
  attr_reader :NUMBER_OF_DOORS

  def initialize(y, c, m)
    super(y, c, m)
    @NUMBER_OF_DOORS = 4
  end
end

class MyTruck < Vehicle
  attr_reader :NUMBER_OF_DOORS

  def initialize(y, c, m)
    super(y, c, m)
    @NUMBER_OF_DOORS = 2
  end
end

car = MyCar.new(2000, "red", "outlander")
truck = MyTruck.new(1900, "white", "ram")
truck2 = MyTruck.new(1900, "white", "ram")



puts "car doors: " + String(car.NUMBER_OF_DOORS)
puts "truck doors: " + String(truck.NUMBER_OF_DOORS)
puts "number of vehicles: " + String(Vehicle.number_of_vehicles)

car.race
