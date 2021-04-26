# > --------------------
# > Welcome to Instacart
# > --------------------
# > In our store today:
# > kiwi: 1.25€
# > banana: 0.5€
# > mango: 4€
# > asparagus: 9€
# > --------------------
# > Which item? (or 'quit' to checkout)
# > kiwi
# > Which item? (or 'quit' to checkout)
# > pineapple
# > Sorry, we don't have pineapple today..
# > Which item? (or 'quit' to checkout)
# > mango
# > Which item? (or 'quit' to checkout)
# > quit
# > -------BILL---------
# > TOTAL: 5.25€
# > --------------------

# PSEUDOCODE

# 1. Welcome user to the app
puts 'Welcome to the Instacart 😍'

# 2. Display the content of our store
# 2.1 declare a store variable => DATA TYPE: ARRAY? HASH?
store = {
  'apple' => 4,
  'cherry' => 8,
  'watermelon' => 20
}
# 3. create a variable to store what the user buys: DATA TYPE: ARRAY? HASH?
shopping_cart = []

customer_order = nil
# LOOP STARTS HERE
until customer_order == 'quit'
  # 2.2 Display it nicely on screen
  store.each do |item, price|
    puts "#{item} -- #{price}€"
  end

  # 4. ask the user for input: what he wants to buy
  puts 'Which item do you want to buy? type quit to stop shopping'
  customer_order = gets.chomp
  # make sure that the item is in the store
  # if so:
  if store.key?(customer_order)
    # 5. store what the user chose in the variable
    shopping_cart << customer_order
    puts "#{customer_order} was successsfully added to the cart"
  # if not:
  else
    # tell the user the item is not available # if customer_order != 'quit'
    puts "#{customer_order} is not available" unless customer_order == 'quit'
  end
end # LOOP ENDS HERE

# 6. calculate total price of what they want to buy
# ["apple", "cherry"]
total_price = 0
shopping_cart.each do |item|
  price_of_item = store[item] # HASHNNAME[KEYNAME]
  total_price += price_of_item
  # total_price = total_price + price_of_item
end

puts '-------BILL---------'
puts "TOTAL: #{total_price}€"
puts '--------------------'
