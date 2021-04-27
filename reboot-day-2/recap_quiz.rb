# Question 1
# 'I own three cars, which all have a color, a brand, and a year'
# 'How can I store them all in one variable?'

cars = nil # replace nil with the correct answer!

# Question 2
# 'I own the following pets:'

pets = {
  'Rookie' => 'Dog',
  'Garfield' => 'Cat',
  'Milka' => 'Cow'
}

# How can i check if 'Milka' is one of my pets? (many possible solutions!)

# Question 3
# Using the following variables:
fruit = 'Tomato'
price = 5.10
currency = '€'
quantity = 10
# How can we create a similar string?
puts '10 x Cucumber(23.5€/unit) = 235€ total.'

# Question 4
# We have the following data structure:
my_weird_hash = {
  'Le Wagon' => { campus: 'Amsterdam', country: ['The Netherlands', 'Holland'] }
}
# How can we get "Amsterdam"?
# HARD: How can we get "The Netherlands?"

# Question 5
# will the code below work? If not, how can we fix it?

while bobs_age <= 18
  puts 'Happy birthday Bob!'
  bobs_age += 1
end

# Question 6

until answer == 'no'
  puts 'Would you like to loop again?'
  answer = gets.chomp
end

# Question 7

fruits = ['apple', 'banana', 'mango']

until answer == 'quit'
  puts "Which fruit would you like to buy?"
  answer = gets.chomp
  if fruits.include?(answer)
    puts "#{answer} was added to your bag!"
  else
    puts "Sorry, we don't have any #{answer}."
  end
end

# Question 8
# We have the following hash:
basket = {
  'carrots' => {quantity: 4, unit_price: 10 },
  'eggs' => { quantity: 12, unit_price: 2 }
}
# Calculate the total price of this basket

