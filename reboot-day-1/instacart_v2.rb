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
# > How many?
# > 2
# > Which item? (or 'quit' to checkout)
# > mango
# > How many?
# > 3
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
# 3. CREATE A NEW SHOPPING CART VARIABLE: A HASH!!
shopping_cart = {
  'apple' => 0,
  'cherry' => 0,
  'watermelon' => 0
} # Hash.new

customer_order = nil
# LOOP STARTS HERE
until customer_order == 'quit'
  # 2.2 Display it nicely on screen
  store.each do |item, price|
    puts "#{item} -- #{price}€" ### IMPLEMENT STOCK HERE
  end

  # 4. ask the user for input: what he wants to buy
  puts 'Which item do you want to buy? type quit to stop shopping'
  customer_order = gets.chomp
  # make sure that the item is in the store
  # if so:
  if store.key?(customer_order)
    # STORE ELEMENTS IN OUR NEW HASH!
    puts 'How many?'
    quantity = gets.chomp.to_i
    ### CHECK IF THERE'S ENOUGH IN STOCK
    ### IF SO
      shopping_cart[customer_order] += quantity
      ### DECREASE STOCK OF THE SHOP
      # shopping_cart[customer_order] = shopping_cart[customer_order] + quantity
      puts "#{customer_order} was successsfully added to the cart"
    ###  IF THE ITEM IS NOT IN STOCK:
      # let the user know that we dont have enough stock
  # if not:
  else
    # tell the user the item is not available # if customer_order != 'quit'
    puts "#{customer_order} is not available" unless customer_order == 'quit'
  end
end # LOOP ENDS HERE

p shopping_cart
# 6. calculate total price of what they want to buy
# ["apple", "cherry"]
total_price = 0

shopping_cart.each do |item, amount|
  price_of_item = store[item] # this is 4 for apple
  combined_price = price_of_item * amount # this is 48 for 12 apples
  total_price += combined_price
  # "3 x Apple (4€/u) = 12€"
  if amount != 0
    puts "#{amount} x #{item}(#{price_of_item}€/u) = #{combined_price}"
  end
end

# CALCULATE THE PRICE NOT THAT OUR CART IS A HASH

puts '-------BILL---------'
puts "TOTAL: #{total_price}€"
puts '--------------------'
