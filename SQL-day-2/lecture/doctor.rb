# doctor.rb
# class Doctor
# doctors



class Doctor
  attr_reader :id
  attr_writer :name
  # attr_accessors

  def initialize(attributes = {})
    @id = attributes[:id]
    @age = attributes[:age]
    @name = attributes[:name]
    # TODO: store other attributes as instanced variable (exercise)
  end

  def save
    # if doctor doesn't exist in the DB
      # SQL: INSERT INTO
    # else if the doctor does exist
     # SQL: UPDATE
  end

  # READ
  # Give me all the doctors
  def self.all_doctors
    # SELECT .......
  end

  def self.find(id)
    # SELECT .....
  end


  #give me one specific doctor

end
Doctor.find(11)

doctor1 = Doctor.new(name: 'John', age: 42)
doctor.id # nil

doctor1.save

doctor1.name = "Doctor Who"
doctor1.save



def method(db)
  result = db.execute(".......")
end

DB.results_as_hash = true
DB.execute("....")

doctors = DB.execute("SELECT name, age FROM doctors")
# => [
#      { "name" => "John Smith", "age" => 39 , 0 => "John Smith", 1 => 39 },
#      { "name" => "Emma Reale", "age" => 31 , 0 => "Emma Reale", 1 => 31 }
#    ]


























