# > --------------------
# > Welcome to Instacart
# > --------------------
# > In our store today:
# > kiwi: 1.25€ (5 available)
# > banana: 0.5€ (4 available)
# > mango: 4€ (1 available)
# > asparagus: 9€ (5 available)
# > --------------------
# > Which item? ('quit' to checkout)
# > kiwi
# > How many?
# > 2
# > Which item? ('quit' to checkout)
# > kiwi
# > How many?
# > 4
# > Sorry, there are only 3 kiwis left..
# > Which item? (or 'quit' to checkout)
# > quit
# > -------BILL---------
# > kiwi: 2 X 1.25€ = 2.5€
# > mango: 3 X 4€ = 12€
# > TOTAL: 14.5€
# > --------------------


# 1. Welcome user to the app
puts 'Welcome to the Instacart 😍'

# 2. Display the content of our store
# 2.1 declare a store variable => DATA TYPE: ARRAY? HASH?
### new hash
store = {
  'apple' => { price: 4, stock: 20 },
  'cherry' => { price: 8, stock: 50 },
  'watermelon' => { price: 20, stock: 100 }
}

# baby_hash = store['apple'] # { price: 4, stock: 20 }
# baby_hash[:price] # 4

# 3. CREATE A NEW SHOPPING CART VARIABLE: A HASH!
# Easy shortcut: to avoid problems, we set each value at 0.
shopping_cart = {
  'apple' => 0,
  'cherry' => 0,
  'watermelon' => 0
}

customer_order = nil
# LOOP STARTS HERE - until the user says 'quit'
until customer_order == 'quit'
  # 2.2 Display it nicely on screen
  store.each do |item, baby_hash|
    puts "#{baby_hash[:stock]} x #{item} -- #{baby_hash[:price]}€"
  end

  # 4. ask the user for input: what he/she wants to buy
  puts 'Which item do you want to buy? type quit to stop shopping'
  customer_order = gets.chomp
  # make sure that the item is in the store
  if store.key?(customer_order)
    # Asking how many they want
    puts 'How many?'
    # Getting the input, make sure we turn it into an integer
    quantity = gets.chomp.to_i
    # Check if there is enough stock for this quantity
    if quantity <= store[customer_order][:stock]
      # execute the code below if the item is in stock
      # shopping_cart[customer_order] = shopping_cart[customer_order] + quantity
      shopping_cart[customer_order] += quantity
      # DECREASE STOCK OF THE SHOP
      store[customer_order][:stock] -= quantity
      puts "#{customer_order} was successsfully added to the cart"
    else # If the item is not in stock
      # let the user know that we dont have enough stock
      puts "We don't have enough #{customer_order} in stock. :("
    end
  else
    # tell the user the item is not available   if customer_order != 'quit'
    puts "#{customer_order} is not available" unless customer_order == 'quit'
  end
end
# ^ LOOP ENDS HERE

# 6. calculate total price of what they want to buy
# make sure the total price starts at 0
total_price = 0

# CALCULATE THE PRICE NOW THAT OUR CART IS A HASH
shopping_cart.each do |item, amount|
  price_of_item = store[item][:price] # this is 4 for apple
  combined_price = price_of_item * amount # this is 48 for 12 apples
  total_price += combined_price # we add the price of 48 (12 apples) to the sum
  # "3 x Apple (4euros/u) = 12euros"
  # We only print it on the bill if there is more than 0 items (at least 1)
  if amount.positive?
    puts "#{amount} x #{item}(#{price_of_item}€/u) = #{combined_price}"
  end
end

puts '-------BILL---------'
puts "TOTAL: #{total_price}€"
puts '--------------------'
