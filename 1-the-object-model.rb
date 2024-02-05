# Exercises

# 1. How do we create an object in Ruby?
  # We create an object by using the keyword class. The name of the class is PascalCased and ends with end.

#Give an example of the creation of an object.

class SampleClass
end

s = SampleClass.new
puts s.class

# 2. What is a module? What is its purpose? How do we use them with our classes?
  # A module is a way to define methods that can be mixed in with classes using the keyword include.
  # Module name must be a constant (Start with a capital letter.)

#Create a module for the class you created in exercise 1 and include it properly.

module Greet
  def greet(name)
    puts "Hello, #{name}"
  end
end

class NewSampleClass
  include Greet
end

s2 = NewSampleClass.new
s2.greet("Patricio")
