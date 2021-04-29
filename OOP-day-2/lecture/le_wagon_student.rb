# file = lower_snake_case
class LeWagonStudent # UpperCamelCase
  # STATE (DATA)
  attr_reader :name, :hobby, :nickname
  attr_writer :nickname # ENCAPSULATION

  # BEHAVIOR
  def initialize(name, hobby, age)
    # instance variables
    @name = name
    @hobby = hobby
    @nickname = nil
    @age = age
  end

  def add_nickname(nickname)
    @nickname = nickname
  end

  def can_drink?
    if old_enough?
      return true
    else
      return false
    end
  end

  private

  def old_enough?
    @age > 18
  end
  # def nickname
  #   @nickname
  # end
  #instance method
  # def greet
  #   "Hello!"
  # end

  # attr_reader :name
  # def name
  #   return @name
  # end
  # attr_writer :name
  # def name=(new_name)
  #   @name = new_name
  # end
  # # attr_writer :hobby
  # def hobby=(hobby)
  #   @hobby = hobby
  # end

  # attr_accessor :hobby
end

p student1 = LeWagonStudent.new('Ari', 'Fixing Bikes', 25)
p student2 = LeWagonStudent.new('Daniel', 'Making Wine Tables', 24)

p student1.can_drink?
