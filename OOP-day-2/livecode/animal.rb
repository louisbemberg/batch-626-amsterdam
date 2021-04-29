class Animal
  attr_reader :name
  def self.diets
    return ['carnivorous', 'omnivorous', 'vegeterian']
  end

  def initialize(name)
    @name = name
  end

  def eat(food)
    # Timon eats a bug
    "#{@name} eats a #{food}"
  end
end

# class Flats

#   def initialize(name)
#     @name = name
#   end

#   def self.all_flats(city)
#     ###
#   end
# end
