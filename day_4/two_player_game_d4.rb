# require 'pry'
# Two Player Math Game
# Create a 2-player guessing game where players take turns to answer simple addition problems.
# The math questions are automatically generated by the game. It should do this by picking two numbers between 1 and 20.
#
# Example prompt: "Player 1: What does 5 plus 3 equal?"
# Both players start with 3 lives. They lose a life if they mis-answer a question.
# If a player gets a question wrong, the game should output the new scores for both players, so players know where they stand.
# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.
# As before, you can use gets.chomp to get input from users and puts for output.

# keep track of who played last
@last_player = 'Player 1'
@player1_alive = true
@player2_alive = true
# set # of lives to 3
@p1_nbr_lives = 3
@p2_nbr_lives = 3

# get random # between 1 and 20
def random_number
  rand 0..20
end

def sum_of(first_number, second_number)
  first_number + second_number
end

def is_correct?(answer, result)
  answer == result
end

def loose_life
  if @last_player == 'Player 1'
    if @p1_nbr_lives == 1
      print_current_stat
      @player1_alive = false
    else
      @p1_nbr_lives -= 1
    end
  else
    if @p2_nbr_lives == 1
      print_current_stat
      @player2_alive = false
    else
      @p2_nbr_lives -= 1
    end
  end
end

def print_current_stat
  if @last_player == 'Player 2'
    puts "Player 1 you have #{@p1_nbr_lives} lives left. Player 2 has lost"
  else
    puts "Player 2 you have #{@p2_nbr_lives} lives left. Player 1 has lost"
  end
end

def swap_player
  if @last_player == 'Player 1'
    @last_player = 'Player 2'
  else
    @last_player = 'Player 1'
  end
end

# MAIN
def main
  # loop until a player has 0 lives
  while @player1_alive && @player2_alive
    # get 1st_number
    first_number = random_number
    # get 2nd number
    second_number = random_number
    # get sum
    result = sum_of(first_number, second_number)
    # ask question from player either player 1 or 2, based on who played last
    puts "#{@last_player}: What does #{first_number} plus #{second_number} equal?  "
    answer = gets.chomp.to_i

    # take input and validate
    if is_correct?(answer, result)
      puts "Whoohoo you are great! #{first_number} + #{second_number} = #{answer}"
    else
      puts "Oh, boo! that is wrong. #{first_number} + #{second_number} = #{result} "      
      loose_life
    end
    swap_player()
  end
end

main
