require_relative 'animal'

class Warthog < Animal
  def talk
    #"Pumba barks"
    "#{@name} sings"
  end
end
