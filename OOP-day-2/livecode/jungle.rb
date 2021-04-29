# Define an Animal with an initialize(name) constructor, exposing its name.
# Define three Lion, Meerkat and Warthog classes
# Implement a #talk instance method which returns a sentence like "Simba roars" for each animal. (Hint: Meerkats bark and Warthog grunt)
# In another Ruby file, create an array with Simba, Nala, Timon & Pumbaa, iterate over it and puts the sound each animal make
# Implement a ::phyla class method which will return an array of the four phyla of the animal kingdom.
# Add an #eat(food) instance method in Animal which returns a sentence like “Timon eats a scorpion”. Then override this method for the Lion class, and return a sentence like “Simba eats a gazelle. Law of the Jungle!”

require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animal1 = Lion.new("Simba")
animal2 = Lion.new("Nala")
animal3 = Meerkat.new("Timon")
animal4 = Warthog.new("Pumba")

p animal1.eat("gazelle")

animals_array = [animal1, animal2, animal3, animal4]

animals_array.each do |animal|
  animal.talk # polymorphism
end

Animal.diets
