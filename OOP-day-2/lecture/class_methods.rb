class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def self.breeds
    return ["Lab", "Teckel", "Pug", "Shepherd"]
  end

  # instance method
  # HOW TO USE
  # instancename.instancemethodname
  def bark
    puts "WOOF WOOF"
  end

  def instancemethod
    # code here
    puts "Your instance method worked! :)"
  end

  def self.classmethod
    puts "Your class method worked! :)"
  end
end

# Dog.breeds
my_dog = Dog.new("Médor", "Lab")
my_dog.instancemethod

Dog.classmethod
# # instance method
# # instance name method name
# dog1.bark
# # Dog.bark # NOT ALLOWED

# # class method
# # classname.classmethodname
# dog1.breeds

# JSON.parse
# Time.now
# Date.today
