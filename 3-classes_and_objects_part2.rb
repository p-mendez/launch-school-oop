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
