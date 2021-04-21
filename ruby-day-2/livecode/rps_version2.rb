# VERSION 2: IMPROVED AND REFACTORED
# I WANT TO PLAY RPS IN MY TERMINAL

# RULES
# Rock > Scissors => rock wins, Scissors loses
# Scissors > Paper
# Paper > Rock
# Paper - Paper tie
# Rock - Rock tie
# Scissors - Scissors tie
# alllowed moves are R, P, S

# 1 player  vs computer
# declare which moves are allowed (array)
options = ['R', 'P', 'S']

# LOOP STARTS HERE
user_answer = 'y'
while user_answer.downcase.start_with?('y')
  # generate a computer move (randomly)
  computer_move = options.sample # same thing: computer_move = options.sample(1)
  # we declare user_move outside of the loop, we will reassign inside it
  user_move = nil
  # Loop that forces the user to give an allowed move
  loop do
    # declare which moves are allowed (array)
    puts 'Your allowed moves are:'
    options.each do |option|
      puts "- #{option} -"
    end
    puts "Which one do you want to pick?"
    print ">"
    # ask for user's desired move
    user_move = gets.chomp
    # we exit the loop if the move is allowed. Otherwise, try again.
    if options.include?(user_move)
      break
    else
      puts 'This move is not allowed. Try again!'
    end
  end
  # compare the two moves, determine who won
  if user_move == computer_move
    puts "It's a draw!"
  # We only need to check two things, because the tie is already written
  elsif user_move == 'R'
    puts computer_move == 'S' ? 'You win!' : 'You lose!'
  elsif user_move == 'P'
    puts computer_move == 'R' ? 'You win!' : 'You lose!'
  elsif user_move == 'S'
    puts computer_move == 'P' ? 'You win!' : 'You lose!'
  end
  # announce the winner
  puts "The computer chose #{computer_move}"

  # we offer to play again
  puts 'Do you want to play again? [yes|no]'
  user_answer = gets.chomp
end
# LOOP ENDS HERE
