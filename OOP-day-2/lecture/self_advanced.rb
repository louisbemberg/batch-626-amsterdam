class Dog
  attr_reader :name, :owner
  def initialize(name, owner)
    @name = name ##### String
    @owner = owner # String
  end
end

class Owner
  attr_reader :dog
  def initialize(name)
    @name = name
  end

  def adopt_dog(dog)
    @dog = dog
  end
end

owner1 = Owner.new("Louis")
dog1 = Dog.new("Sparky", owner1)

owner1.adopt_dog(dog1)

