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
