# class GoodDog
#   def initialize
#     puts "This object was initialized"
#   end
# end

# sparky = GoodDog.new

# =begin
#  The initialize method gets called every time you create a new object.
#  That's odd, don't we call the new method when we create an object? Yes,
#  calling the new class method eventually leads us to the initialize instance method.
#  We'll talk about the difference between class methods and instance methods later.
#  In the above example, instantiating a new GoodDog object triggered the initialize
#  method and resulted in the string being outputted. We refer to the initialize method
#  as a constructor, because it is a special method that builds the object when a new
#  object is instantiated. It gets triggered by the new class method.
# =end

# class GoodDog
#   def initialize(name)
#     @name = name
#   end
# end

# sparky = GoodDog.new("Sparky")

# =begin
# You'll notice something new here. The @name variable looks different because it has the @ symbol
# in front of it. This is called an instance variable. It is a variable that exists as long as the
# object instance exists and it is one of the ways we tie data to objects. It does not "die"
# after the initialize method is run. It "lives on", to be referenced, until the object instance
# is destroyed. In the above example, our initialize method is defined with one parameter: name.
# You can pass arguments into the initialize method through the new method. Let's create an object
# using the GoodDog class from above

# From that example, we can see that instance variables are responsible for keeping track of
# information about the state of an object. In the above line of code, the name of the sparky object
# is the string "Sparky". This state for the object is tracked in the instance variable, @name.
# If we created another GoodDog object, for example, with fido = GoodDog.new('Fido'), then the @name
# instance variable for the fido object would contain the string "Fido". Every object's state is
# distinct, and instance variables are how we keep track.
# =end

# class GoodDog
#   def initialize(name)
#     @name = name
#   end

#   def get_name
#     @name
#   end

#   def set_name=(name)
#     @name = name
#   end

#   def speak
#     "#{@name} says Arf!"
#   end
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak

# fido = GoodDog.new("Fido")
# puts fido.speak

# #puts sparky.name # <- Error

# puts sparky.get_name
# sparky.set_name = "Spartacus"
# puts sparky.get_name

# =begin
# As you can see, we've successfully changed sparky's name to the string "Spartacus".
# The first thing you should notice about the setter method set_name= is that Ruby gives
# us a special syntax to use it. To use the set_name= method normally, we would expect to
# do this: sparky.set_name=("Spartacus"), where the entire "set_name=" is the method name,
# and the string "Spartacus" is the argument being passed in to the method. Ruby recognizes
# that this is a setter method and allows us to use the more natural assignment syntax:
# sparky.set_name = "Spartacus". When you see this code, just realize there's a method called
# set_name= working behind the scenes, and we're just seeing some Ruby syntactical sugar.
# =end



=begin
Finally, as a convention, Rubyists typically want to name those getter and setter methods
using the same name as the instance variable they are exposing and setting.
We'll make the change to our code as well:
=end

class GoodDog
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(n)
    @name = n
  end

  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
sparky.name = "Spartacus"
puts sparky.name
