class Restaurant
  attr_reader :name
  def initialize(name, city)
    @name = name
    @city = city
  end

  def open?
    Time.now.hour > 18 && Time.now.hour < 23
  end

  def new_name(name)
    @name = "---------#{name}--------"
  end
end

  class FastFood < Restaurant
    def initialize(name, city, prep_time)
      super(name, city)
      @prep_time = prep_time
    end

    def open?
      Time.now.hour > 11 && Time.now.hour < 13 || super
    end

    def new_name(name)
      @name = "******#{super(name)}*******"
    end
  end

  class Gastronomic < Restaurant
    def initialize(name, city, stars)
      @name = name
      @city = city
      @stars = stars
    end
  end

  class Vegeterian < Restaurant
  end

burger_king = FastFood.new("BK", "Amsterdam", 7)
hells_kitchen = Gastronomic.new("Hell's Kitchen", "London", 2)
honest_greens = Vegeterian.new("Honest Greens", "Madrid")

burger_king.new_name("Mcd's")
p burger_king.name

# INHERITANCE
# SUB CLASS & SUPER CLASS
# CHILD & Parent
# Vegeterian inherits from Restaurant

# 1. Ruby always looks for what it needs inside the CHILD first.
# if ruby finds it in the child, it stops there
# if ruby doesn't find it in the child, it goes and checks in the parent.
# what if i want to have the best of both worlds?

# 1. Ruby doesn't find the method => Runs the parent method
# 2. Ruby finds the method in the cild => Doesn't run the parent method
# 3. We ask ruby to run both with the help of super
