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

class Animal
  def speak
    "Hello"
  end
end

class GoodDog < Animal
  def speak
    super + ". Have a nice day!"
  end
end

sparky = GoodDog.new
puts sparky.speak
