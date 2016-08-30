# Write a method count_letters that can tell us all the unique characters
# that exist in a string that is passed into the method. Furthermore,
# the method should also report back how many
# instances of each letter were found in the string.

def count_letters(input_string)
  letter = input_string.scan /\w/
  freq = Hash.new(0)

  # this will create a histogram count for each letter
  letter.each do |letter|
    freq[letter] += 1
  end



  # output letter and count
  freq.each do |letter, count|
    puts letter + " " + count.to_s
  end

end

count_letters("lighthouse in the house...")
