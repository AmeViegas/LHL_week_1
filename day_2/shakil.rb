

#check  inputs using Regexp 
def what_said(text)
  case text
  when /woof/
    #output 3 woofs
    puts "Shakil: WOOF WOOF WOOF"
  when /stop/
    puts "Shakil will be quiet for a bit"
    sleep(3)
  when /treat/
    puts "Shakil will be quiet for a bit"
    sleep(3)
  when /meow/
    puts "Shakil: woof woof woof woof woof"
  else
    puts "Shakil: woof"
  end
end


# get input from user
loop do
  puts "Shakil is barking. What do you want to do?"
  i_said = gets.chomp
  i_said.downcase!
  if (i_said.include?"go away")
    break
  else
    what_said(i_said)
  end
end
