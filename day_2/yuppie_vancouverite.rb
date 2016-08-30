require 'pry'
# Write test code by outputting the return values for possible
# permutations of this method (at the bottom of this file)
# Based on the actual behavior (vs desired behavior), can
# you determine what the (buggy) logic is ACTUALLY checking?
# Having identified what is actually occurring vs what should occur,
# fix the bug such that the logic works as desired.
# Compare and discuss your solution (fix) with your peers. This includes
# your test cases. Did you cover all the possibilities? Did you have the
# same solution? Whose is better and why?  How can you reduce the body/contents of
# this method down to one line? Effectively making it much simpler and cleaner.
# Do it!

# must be baller and either furnished or rent cheaper than 2100
def rent?(furnished, rent, baller)

# needed () due to the && eval
  if (baller && furnished) || rent < 2100
    return true
  else
    return false
  end
end

###
# Add your "test" ("driver") code below in order to "test drive" (run) your
# method above...
# The test code will call the method with different permutations of options and
# output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at
# the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is
# working as it should or not.
###
def test_driver
 puts "baller & furnished and 2000: rent" if rent?(true,2000, true)
 puts "not baller & furnished and 2000: rent" if rent?(false,2000, true)
 puts "baller & not furnished and 2000: rent" if rent?(true,2000, false)
 puts "not baller & not furnished and 2000: rent" if rent?(false,2000, false)

 puts "baller & furnished and 2100: rent" if rent?(true,2100, true)
 puts "not baller & furnished and 2100: rent" if rent?(false,2000, true)
 puts "baller & not furnished and 2100: rent" if rent?(true,2000, false)
 puts "not baller & not furnished and 2100: rent" if rent?(false,2000, false)

 puts "baller & furnished and 2200: rent" if rent?(true,2200, true)
 puts "not baller & furnished and 2200: rent" if rent?(false,2000, true)
 puts "baller & not furnished and 2200: rent" if rent?(true,2000, false)
 puts "not baller & not furnished and 2200: rent" if rent?(false,2000, false)

end

test_driver
