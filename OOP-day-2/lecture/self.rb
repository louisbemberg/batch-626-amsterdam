class Dog
  attr_reader :name
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def self.breeds
    return ["Lab", "Teckel", "Pug", "Shepherd"]
  end

  def bark
    puts "WOOF WOOF"
  end

  def who_am_i
    self
    # my_dog1
    # Self WHEN USED INSIDE OF AN INSTANCE METHOD
    # REPRESENTS THE INSTANCE ON WHICH THE INSTANCE METHOD WAS USED
  end
end

my_dog = Dog.new('Navi', 'Lab')
my_dog2 = Dog.new('Sparky', 'Pug')
p my_dog1.who_am_i

# If you use self on the same line of a method def, it's to build a class method

# If you use self INSIDE an instance method,
# self represents the instance ON WHICH the instance method was called
