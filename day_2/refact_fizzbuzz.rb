# Task 1
# Refactor (improve) this code by implementing a method (called fizzbuzz) that takes in the starting
# and ending number so that we can programmatically change which numbers our fizzbuzz starts
# and ends at, instead of the usual 1 and 100.
# Task 2
# Think about other methods that can be implemented to further refactor this code and
# make it more readable. Remember that readability does not necessarily mean fewer lines of code.

def fizzbuzz(start_pt, end_pt)
    start_pt.upto(end_pt) do |number|
        if is_mod_of_5(number) == 0 && is_mod_of_3(number) == 0
            puts 'FizzBuzz'
        elsif is_mod_of_5(number) == 0
            puts 'Buzz'
        elsif is_mod_of_3(number) == 0
            puts 'Fizz'
        else
            puts number
       end
    end
end

def is_mod_of_3(counter)
    counter % 3
end

def is_mod_of_5(counter)
    counter % 5
end
fizzbuzz(1, 100)
