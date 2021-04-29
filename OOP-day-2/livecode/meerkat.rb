require_relative 'animal'

class Meerkat < Animal
  def talk
    #"Timon barks"
    "#{@name} barks"
  end
end
