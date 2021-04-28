class SlotMachine
  attr_reader :reels

  SCORES = {
    # reel => points
    '🃏' => 50,
    '⭐️' => 40,
    '🔔' => 30,
    '🐲' => 20,
    '🍒' => 10
  }
  def initialize
    new_reels
  end

  def new_reels
    @reels = []
    3.times do
      @reels << SCORES.keys.sample
    end
    @reels
  end

  def score
    if three_of_the_same?
      SCORES[@reels.first]
    elsif two_of_the_same_and_at_least_one_joker?
      pair = @reels.sort[1]
      SCORES[pair] / 2
    else # none of the same
      0
    end
  end

   private

  def three_of_the_same?
    @reels.uniq.size == 1
  end

  def two_of_the_same_and_at_least_one_joker?
    @reels.uniq.size == 2 && @reels.include?('🃏')
  end
end

game = SlotMachine.new

play_again = nil
until play_again == 'no'
  p game.new_reels
  puts "You scored #{game.score} points"

  puts 'Do you want to play again?[yes|no]'
  play_again = gets.chomp
end
# p 'Game 1'
# p game.reels
# p game.score

# p 'Game 2'
# p game.new_reels
# p game.score

# p 'Game 3'
# p game.new_reels
# p game.score
