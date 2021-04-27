# > Welcome to your Christmas gift list
# > Which action [list|add|delete|quit]?
# > list
# > TODO: list items
# > Which action [list|add|delete|quit]?
# > add
# > TODO: ask user an item and add it to gift list
# > Which action [list|add|delete|quit]?
# > delete
# > TODO: ask user the index of item to delete and delete it
# > Which action [list|add|delete|quit]?
# > quit
# > Goodbye

# Welcome the user to the app (use emojis)
puts "Welcome to your chrismtas list 🎄"

# create a variable DATA TYPE: Array? Hash? stores: the items of the list
christmas_list = ["Perfume", "Book", "Surfboard", 'LV Bag', 'Nø€∑rwky']
# Create user_input variable to enter the loop
user_input = nil
# LOOP STARTS HERE
until user_input == 'quit'
  # Display to the user which actions are available and make them pick one
  puts 'Which action [list|add|delete|quit]?'
  # get the user input
  user_input = gets.chomp.downcase
  # Structure: if/else OR case/when : which is better???
  case user_input
  when 'list'
    # CODE
    # iterate with each_with_index on the array
    # display it nicely with puts
    # (optional): refactor this chunk into a method :)
  when 'add'
    # CODE
    # Ask what item they want to add to the array
    # Get the user's input
    # shove it in the array
    # display the udpated list to give feedback
  when 'delete'
    # CODE
    # Display them the christmas list
    # Ask what item they want to remove from the array
    # Get the user's input. Easy-way: make them type, Hard-way: choose index
    # Check if what they said is actually in the array
    # if it is: use the delete method (delete it from the array)
    # if not: tell them they did not choose an available item
  else
    puts "#{user_input} is not one of the allowed options. Try again" unless user_input == 'quit'
  end
end
# Thank the user and say goodbye
puts "Thanks for using our amazing app! <3"


