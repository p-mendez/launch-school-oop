class Dog
  def initialize(n)
    @name = n
  end

  def bark
    'Ruff ruff'
  end
end

# spot = Dog.new("Spot")
# puts spot.bark

class Lamp
  def self.about_me
    "We brighten up people's lives"
  end
end

# puts Lamp.about_me

class WaterBottle
  def initialize(size)
    @size = size
  end

  attr_reader :size
end

# w = WaterBottle.new(3)
# puts w.size

class Person
  def initialize(a)
    @age = a
  end

  attr_writer :age
end

# me = Person.new(99)
# me.age = 60
# p me

module MathHelper
  def multiply_by_two(n)
    n * 2
  end
end

class Homework
  include MathHelper
end

# hw = Homework.new
# puts hw.multiply_by_two 6

# puts Homework.ancestors

class BaseballPlayer
  attr_reader :hits, :walks, :at_bats

  def initialize(h, w, a)
    @hits = h
    @walks = w
    @at_bats = a
  end

  def batting_average
    hits.to_f / at_bats
  end

  def on_base_percentage
    (hits + walks) / at_bats.to_f
  end
end

# player = BaseballPlayer.new(10, 5, 30)
# puts player.batting_average
# puts player.on_base_percentage

# class Person
#   def initialize(f, l)
#     @first_name = f
#     @last_name = l
#   end

#   attr_reader :first_name, :last_name

#   def full_name
#     "#{first_name} #{last_name}"
#   end
# end

# jd = Person.new("John", "Doe")
# puts jd.full_name

module MathHelpers
  def exponent(b, p)
    b**p
  end
end

class Calculator
  include MathHelpers

  def square_root(n)
    exponent(n, 0.5)
  end
end

c = Calculator.new
puts c.square_root(4)
