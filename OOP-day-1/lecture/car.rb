class Car
  # attr_reader :color, :brand, :wheels, :year
  # attr_writer :color, :brand, :wheels, :year
  attr_accessor :color, :brand, :wheels, :year
  # 2 things
  # STATE AND BEHAVIOR
  def initialize(color, brand)
    # instance variables
    # @color represents the color of the instance in question
    @color = color
    @brand = brand
    @wheels = 4
    @year = 2021
  end

  def honk
    puts "HONK HONK HONK!!!"
  end

  def start_engine
    step1
    step2
    step3
  end

  private

  # private methods
  def step1
    puts "Spark some gasoline on fire"
  end

  def step2
    puts "launch pivots"
  end

  def step3
    puts "Engine running"
  end

  # def color=(color)
  #   @color = color
  # end

  # def color
  #   @color
  # end


  # def brand
  #   @brand
  # end


  # def wheels
  #   @wheels
  # end


  # def year
  #   @year
  # end
end

# String.new("Hello")
car1 = Car.new('red', 'Ferrari')
car2 = Car.new('blue', 'Porsche')
puts "Let's take a look at car1"
p car1
puts "Let's take a look at car2"
p car2
# puts "The class of the car is:"
# p car1.class

# puts "Are car1 and car2 the same?"
# p car1 == car2

# ADDING STATE
car3 = Car.new('green', 'Lamborghini')
puts "Let's take a look at car3"
p car3
# TWO THINGS happening
# 1. create an instane of the Car class and store it in memory
# 2. Ruby is looking for a initialize method in the class
  # if it finds it, it runs it automatically

# ADDING BEHAVIOR
puts "What is the color of car1?"
puts car1.color
puts "What is the brand of car2?"
puts car2.brand

puts "I want the color of car1 to be now yellow"
car1.color = "Yellow"
puts "Thew new color of car 1 is:"
puts car1.color

puts "Let's change the amount of wheels of car2"
car2.wheels = 3
puts "Car2 now has this many wheels:"
puts car2.wheels

puts "Let's honk"
# Instance Method
# INSTANCENAME.INSTANCEMETHODNAME
car1.honk
car2.honk
car3.honk

puts "Let's use step3"
car1.start_engine









