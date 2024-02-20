# Class methods are methods we can call directly on the class itself.
# When defining a class method, we prepend the method name with the reserved word self.

class GoodDog
  def self.what_am_i
    "I'm a GoodDog class!"
  end
end

# Use class methods when you don't need to keep track of states, otherwise use instances.
