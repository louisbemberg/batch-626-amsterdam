# Welcome the user to the app (use emojis)
puts "Welcome to your chrismtas list 🎄"

# create a variable DATA TYPE: Array? Hash? stores: the items of the list
#                       0     1           2             3       4
christmas_list = ['Perfume', 'Book', 'Surfboard', 'LV Bag', 'Nø€∑rwky']

# Create user_input variable to enter the loop
user_input = nil

# define a method that displays ANY list nicely
def display_list(array)
  # iterate with each_with_index on the array
  array.each_with_index do |item, index|
    # display it nicely with puts
    puts "#{index + 1}. #{item}"
  end
end

# LOOP STARTS HERE
until user_input == 'quit'
  # Display to the user which actions are available and make them pick one
  puts 'Which action [list|add|delete|quit]?'
  # get the user input
  user_input = gets.chomp.downcase
  # Structure: if/else OR case/when : which is better???
  case user_input
  when 'list'
    # (optional): refactor this chunk into a method :)
    display_list(christmas_list) # calling the refactored method
  when 'add'
    # Ask what item they want to add to the array
    puts 'What item do you want to add to your list'
    # Get the user's input
    new_item = gets.chomp
    # shove it in the array
    christmas_list << new_item
    # display the udpated list to give feedback
    display_list(christmas_list)
  when 'delete'
    # --------------------------------------------------
    # ----- 'EASIER VERSION - typing the NAME of the item'
    # ---------------------------------------------------
    # # Display them the christmas list
    # display_list(christmas_list)
    # # Ask what item they want to remove from the array
    # puts "Which item do you want to remove from your list?"
    # # Get the user's input. Easy-way: make them type, Hard-way: choose index
    # item_to_delete = gets.chomp
    # # Check if what they said is actually in the array
    # if christmas_list.include?(item_to_delete)
    #   # if it is: use the delete method (delete it from the array)
    #   christmas_list.delete(item_to_delete)
    #   display_list(christmas_list)
    # else
    #   # if not: tell them they did not choose an available item
    #   puts "#{item_to_delete} is not in your christmas list"
    # end

    # --------------------------------------------------
    # ----- 'HARDER VERSION - typing the INDEX of the item to delete
    # --------------------------------------------------
    # Display them the christmas list
    display_list(christmas_list)
    # Ask what item they want to remove from the array
    puts 'Which item *NUMBER* do you want to remove from your list?'
    # Get the user's input. Easy-way: make them type, Hard-way: choose index
    item_number = gets.chomp.to_i
    item_index = item_number - 1
    # Check if the number said is actually in the list
    # alternatives:
    # if item_number < array.size && item_number.positive?
    # if (1.christmas_list.length).include?(item_number)
    if (0..christmas_list.length - 1).include?(item_index)
      christmas_list.delete_at(item_index)
      display_list(christmas_list)
    else
      puts "#{item_number} is not a valid number of your list"
    end
  else
    puts "#{user_input} is not allowed. Try again" unless user_input == 'quit'
  end
end
# ^LOOP ENDS HERE

# Thank the user and say goodbye
puts 'Thanks for using our amazing app! 🦌'
