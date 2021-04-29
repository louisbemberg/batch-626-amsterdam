class Dog
  attr_reader :name, :owner

  def initialize(name, breed, owner)
    @name = name
    @breed = breed
    @owner = owner
  end
end

class Owner
  attr_reader :dog
  def initialize(name, dog_name, dog_breed)
    @name = name
    @dog = Dog.new(dog_name, dog_breed, self)
  end

  # def adopt_dog(dog)
  #   @dog = dog
  # end
end

owner1 = Owner.new("Nirmala", "Navy", "Border Collie")

# owner1.adopt_dog(dog1)

# p owner1.dog.name
