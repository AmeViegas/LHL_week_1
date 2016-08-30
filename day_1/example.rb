james = {name: "James", address[{location: [0, 27, {universal_point: 67}]}], height: 175}
bob = {name: "Bob", age: 27, height: 175}

contacts = {bob, james}

contacts.each_char do |x|
  puts x # this will print out the object held in contacts
end

#to access james' location directly
puts contacts[1][:address][0][:location][2][:universal_point]
