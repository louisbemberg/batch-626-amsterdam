class CuteDog
  attr_reader :breed
  attr_accessor :name

  def initialize(breed, name)
    @breed = breed
    @name = name
  end

  def bark
    "#{@name} barks"
  end

  # def change_name(name)
  #   @name = name
  # end
end

navy = CuteDog.new("Border Collie", "Navy")
rex = CuteDog.new("German Shepherd", "Rex")

p navy.change_name("Navy Blue")
p navy.name = "Navy Blue"
