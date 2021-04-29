class FastFood < Restaurant
  def initialize(name, city, capacity, prep_time)
    super(name, city, capacity)
    @prep_time = prep_time
  end
end
