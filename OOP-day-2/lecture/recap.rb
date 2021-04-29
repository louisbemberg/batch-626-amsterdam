class Student
  def initialize(name, age, hobby)
    @name = name
    @age = age
    @hobby = hobby
  end

  attr_reader :name, :nickname
  # def name
  #   @name
  # end

  attr_accessor :hobby
  # attr_reader :hobby
  # def hobby
  #   @hobby
  # end

  # attr_writer :hobby
  # def hobby=(new_hobby)
  #   @hobby = new_hobby
  # end

  def new_year_new_me
    @name = "Julia"
    @hobby = "Dancing"
    @age = @age + 1
  end

  def add_nickname(nickname)
    @nickname = nickname
  end

  def can_drink?
    puts old_enough? ? "yes" : "no"
  end

  private

  def old_enough?
    @age > 18
  end
end

p student1 = Student.new('Onno', 25, 'Wood Working')
p student2 = Student.new('Ari', 20, 'Fixing Bikes')
p student3 = Student.new('Hellen', 23, 'Quality Time with Pets')
p student4 = Student.new('Hellen', 23, 'Quality Time with Pets')

puts 'The class of student1 is:'
puts student1.class

puts 'Does every student come from the same class?'
puts student1.class == student2.class

puts "I want to know student 2's name"
p student2.name

puts "I want to know student 2's favourite hobby"
p student2.hobby

puts "Nevermind, that's not Ari's favourite hobby at all! Let's change it:"
student2.hobby = 'Riding Bikes'

puts "What is student 2's hobby now?"
p student2.hobby

puts 'Onno often goes by the name of:'
student1.add_nickname('Bob the Builder')
p student1.nickname
p student1.instance_variables

puts "Is Onno old enough to drink?"
# p student1.old_enough? # not allowed, private method
student1.can_drink?

puts "Ari wants to change her life a bit:"
student2.new_year_new_me
p student2
