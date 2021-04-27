# VOCABULARY
# age = 18

# two = 2
# three = 3

# two = 3
# puts two
# puts three
# # 3 is printed twice
# methods

# def my_method(param1, param2)
#   "#{param1.upcase}Say my Name#{param2}"
# end

# # CALLED the method with an ARGUMENT 'Hello'
# puts my_method('mango', 'apple')

# puts "Hello"
# p  "Hello"
# print "Hello"
# print "Hello"

# if / else
# age = 26
# if age < 18
#   puts "You cannot drink"
# else
#   puts "you can drink"
# end

# # CONDITION ? CODEIFTrue : CODEIFFLASE
# age < 18 ? "You cannot drink" : "you can drink"

# # CODE IF CONDITION
# puts "You cannot drink" if age < 18

# # ruby built-in methods
# 'Jose'.upcase

# concatenation & interpolation
# h = "hello"
# w = "world"
# puts "#{h} #{w}"

# arrays
# array = ["Dory", "Nemo", "Marin"]
# array[1]
# array[2]
# array[-1]
# array.last

# array[2] = "marco"
# array.push("Mulan")
# array << "Simba"
# p array
# hashes
# my_hash = {
#   "key" => "value",
#   "louis" => "teacher",
#   "Daniel" => "Progammer"
# }
# p my_hash["Daniel"]
# p my_hash["Graciella"]

# iterators
# characters = ["Dory", "Nemo", "Marin"]

# characters.each_with_index do |character, index|
#   puts "#{index + 1}.#{character} is awesome"
# end

# pcharacters.map do |character|
#   "#{index + 1}.#{character} is awesome"
# end

# grades = [19, 8, 11, 15, 13, 12]
# # TODO: compute and store the result in a variable `average`
# suma = 0.0
# grades.each do |grade|
#   suma += grade # suma = suma + grade
# end
# total = suma / grades.length


# def capitalize_name(first_name, last_name)
#   "#{first_name.capitalize} #{last_name.capitalize}."
# end


# fruits = ["banana", "peach", "watermelon", "orange"]

# paises = {
#   "Esp" => 10,
#   "Ita" => 8,
#   "Sui" => 3
# }

# ciudades = {
#   'Madrid' => 2,
#   'Paris' => 5
# }

# lista = ["Esp", "Sui", "Paris"] # 18
# poblacion = 0
# lista.each do |elemento|
#   if paises[elemento] == nil # tiene que ser en paises
#     poblacion = poblacion + paises[elemento]
#   else # tiene que ser en ciduades
#     ciudades[elemento]
#   end
# end





# TODO: Convert the array of arrays into an array of hashes.
# students.map do |student|
#   # student = [ "john", 28 ]
#   {:name => student[0], :age => student[1]}
# end




# grades = [19, 8, 11, 15, 13]
# sum = 0
# sum_grades = grades.each do |grade|
#   sum = sum + grade
# end
# sum
# p sum.to_f / grades.size


# def capitalize_name(first_name,last_name)
#   "#{first_name.capitalize} #{last_name.capitalize}"
# end




# fruits = ["banana", "peach", "watermelon", "orange"]

# fruits.delete("orange")
# fruits.delete_at(3)




city = { name: "Paris", population: 2000000 }

p city[:name] = "London"

p city[:population] = 2000001






























































