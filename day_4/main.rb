# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

AGE_OVER = 17
LANGUAGE_LIST = ['Ruby', 'Python']
REQ_GITHUB_PTS = 100
APPLIED_WITHIN_DAYS = 15

## Your test code can go here
def qualified_candidates(list_of_candiates)
  sort_all_candidates(list_of_candiates.select do |person|
    experienced?(person) \
    && over_requisite_github_points(person, REQ_GITHUB_PTS) \
    && has_required_languages(person, LANGUAGE_LIST) \
    && applied_during_right_period(person, APPLIED_WITHIN_DAYS) \
    && of_age?(person, AGE_OVER)
  end)
end

# sort_all_candidates

# Create a REPL that presents the user with a menu where they can
# type in one of the following commands:

# find 1: This will display candidate with id 1
# all: This will print them all out to the screen (one per line)
# qualified: This will print only qualified candidates, ordered
# by experience and points (one per line)
# quit: Exit the REPL / program
# Bonus: When printing out candidates, colour the output based on
# their qualification (green for qualified, red for unqualified)

# binding.pry
repl_on = true
while repl_on
  puts " "
  puts "Please select: "
  puts "(1) for find candidate with id, "
  puts "(2) for all candidates or "
  puts "(quit) to exit"
  puts " "
  request = gets.chomp

  case request
  when '1'
    puts "ID please"
    candidate_id = gets.chomp
    pp find(candidate_id)
  when '2'
    pp qualified_candidates @candidates
  when "quit"
    repl_on = false
  end


end
# pp qualified_candidates
