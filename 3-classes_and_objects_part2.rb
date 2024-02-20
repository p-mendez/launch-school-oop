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


class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end
end

puts GoodDog.total_number_of_dogs
dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs
