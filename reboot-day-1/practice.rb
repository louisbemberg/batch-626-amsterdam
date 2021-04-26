#  V1
puts '-------------------------'
puts '***Welcome to Instacart***'
puts '-------------------------'

# Create store : Which data type? ARRAY? HASH?
store = { 'Apple' => 2,
  'Mango' => 5,
  'Pineapple' => 10,
  'Watermelon' => 20 }

# Show what's in the store
puts "Here's what we have in stock:"
store.each do |fruit, price|
  puts "#{fruit} -- #{price}€"
end

# create shopping_bag variable : which data type?
shopping_bag = []

# Ask which item they want to buy
# + implement loop logic with quit
user_input = nil

until user_input == 'quit'
  puts 'which item do you want to buy? Enter quit when done'
  user_input = gets.chomp

  if store.include?(user_input)
    shopping_bag << user_input
    puts "#{user_input} was added to your bag."
  else
    puts "Sorry, we do not have #{user_input}." unless user_input == 'quit'
  end
  system('clear')
end

# Calculate the price
total_price = 0
shopping_bag.each do |item|
  price_of_item = store[item]
  total_price += price_of_item
end

# Display the bill
puts '-------BILL---------'
puts "TOTAL: #{total_price}€"
puts '--------------------'

# Welcome User to our app
puts '------------------'
puts 'Welcome to Instacart!'
puts '------------------'

# Decide what's in our store + the price of it

store_items = {
  'apple' => 2,
  'mango' => 5,
  'kiwi' => 10,
  'watermelon' => 20
}

# Communicate what's in our store
puts 'Here are the latest arrivals for today:'
store_items.each do |fruit, price|
  puts "#{fruit} - #{price}€"
end

# Ask the user what they want to choose
cart_items = []

# When the user enters the loop for the first time, we assume buy_again? is true
buy_again = true

# keep looping as long as the user wants to keep buying things
while buy_again
  puts 'Which fruit would you like to buy today?'
  new_item = gets.chomp
  if store_items.key?(new_item)
    cart_items << new_item
    puts "#{new_item} was added to your cart"

    # ask them if they want to buy again
    puts 'Do you want to buy another item? (y|n)'
    buy_again = gets.chomp.start_with?('y')
  else
    puts 'This item is not available at the store.'
  end
end
# ^end of loop

# Show the user the content of the cart
puts "Here's what you have in your cart:"
cart_items.each do |item|
  puts "***#{item}***"
end

# Thank the user for shopping with us
puts 'Thank you for shopping with us today! You owe:'

# Tell the user how much they owe us
owed_amount = 0
cart_items.each do |item|
  owed_amount += store_items[item]
end

puts "#{owed_amount}€"
# Goodbye







## VERSION 3
puts '--------------------'
puts 'Welcome to Instacart'
puts '--------------------'

store = {
  'Apple' => { 'stock' => 12, 'price' => 5 },
  'Pear' => { 'stock' => 16, 'price' => 2 },
  'Watermelon' => { 'stock' => 16, 'price' => 2 }
}

shopping_bag = {
  'Apple' => 0,
  'Pear' => 0,
  'Watermelon' => 0
}

user_input = nil
until user_input == 'Quit'
  puts
  puts "Here's what we have in our store:"

  store.each do |fruit, baby_hash|
    puts "#{fruit} - stock: #{baby_hash['stock']} - price: #{baby_hash['price']}€"
  end
  puts
  # ask which fruit they want
  puts 'Which fruit would you like to buy?'
  # get user input
  user_input = gets.chomp.capitalize
  # check if what they typed is correct, else try again
  # if in the store:
  if store.key?(user_input)
    # ask how many they want
    puts 'How many?'
    quantity = gets.chomp.to_i
    # check if we have those in stock
    # if we do:
    if store[user_input]['stock'] >= quantity
      # add the quantity to the cart
      shopping_bag[user_input] += quantity
      # decrease the quantity of the stock
      store[user_input]['stock'] -= quantity
    # if we don't have enough stock:
    else
      # communicate we don't have enough stock
      puts "We don't have enough #{user_input} in stock"
    end
  # if not in the store:
  else
    puts "We don't have #{user_input} in the store." unless user_input == 'Quit'
  end
end

puts
puts '-------BILL---------'
total_price = 0
shopping_bag.each do |fruit, quantity|
  unit_price = store[fruit]['price']
  multiple_price = unit_price * quantity
  total_price += multiple_price
  puts "#{quantity} x #{fruit}(#{unit_price}€/unit) = #{multiple_price}"
end
puts "TOTAL: #{total_price}€"
puts '--------------------'
