# VERSION 1: THE VERSION WE CAME UP WITH IN THE LIVECODE

# I WANT TO PLAY RPS IN MY TERMINAL

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
# generate a computer move (randomly)
# same thing: computer_move = options.sample(1)
# LOOP STARTS HERE
user_answer = 'yes'
while user_answer == 'yes'
  computer_move = options.sample
  # declare which moves are allowed (array)
  puts 'Your allowed moves are:'
  puts options
  # ask for user's desired move
  puts 'Please choose one of those moves'
  user_move = gets.chomp
  # compare the two moves, determine who won
  if user_move == computer_move
    puts "It's a draw!"
  elsif (user_move == 'R' && computer_move == 'S') || (user_move == 'P' && computer_move == 'R') || (user_move == 'S' && computer_move == 'P')
    puts "You win!"
  elsif (user_move == 'R' && computer_move == 'P') || (user_move == 'P' && computer_move == 'S') || (user_move == 'S' && computer_move == 'R')
    puts "You lose!"
  end
  # announce the winner
  puts "The computer chose #{computer_move}"
# LOOP ENDS HERE
  puts 'Do you want to play again? [yes|no]'
  user_answer = gets.chomp
end

# areas of improvement
# - not checking if user chose RPS
# - too specific on yes/no

