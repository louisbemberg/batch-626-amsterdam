# Welcome user to the Christmas List
puts 'Welcome to the Christmas List!!! 🎁🎄🤶'
# Create christmas list variable: data type? array?
christmas_list = ['Xbox', 'Poney', 'A Pair of Nikes', 'Nice Book']

# declare the variable before the loop starts
chosen_action = nil

def display_list(list)
  # iterate over the christmas list
  list.each_with_index do |item, index|
    # puts every element on the list nicely with numbers
    puts "#{index + 1}. #{item}"
  end
end

# LOOP STARTS HERE
until chosen_action == 'quit'
  # offer the user to do a bunch of things: list, add, delete, quit.
  puts 'What would you like to do? [list|add|delete|quit]'
  chosen_action = gets.chomp.downcase
  # Which structure? if/else? case statement?
  case chosen_action
  when 'list'
    display_list(christmas_list) # we call our method that displays any list
  when 'add'
    # ask the user the item they want to add to their christmas list
    puts 'What do you want to add to your christmas list?'
    new_item = gets.chomp
    # add it to the christmas list
    christmas_list << new_item
    # confirm it worked by showing the new list?
    puts "#{new_item} was successfully added to the list"
  when 'delete'
    # ---------Using Indexes---------------
    puts 'Which item shall we remove from the list? Indicate a number'
    display_list(christmas_list)
    index_to_remove = gets.chomp.to_i - 1
    if (0..christmas_list.length - 1).include?(index_to_remove)
      deleted_item = christmas_list.delete_at(index_to_remove)
      puts "#{deleted_item} was successfully removed."
    else
      puts "#{index_to_remove + 1} is not one of the numbers of your list. :/"
    end
    # ----------- Using The Name of the Item --------------------
    # puts 'Which item shall we remove from the list? Type its name'
    # display_list(christmas_list)
    # item_to_remove = gets.chomp
    # if christmas_list.include?(item_to_remove)
    #   christmas_list.delete(item_to_remove)
    #   puts "#{item_to_remove} was successfully removed."
    # else
    #   puts "You don't have #{item_to_remove} in your christmas list. :/"
    # end
  else
    puts 'Incorret action, please try again. :)' unless chosen_action == 'quit'
  end
end
# LOOP ENDS
