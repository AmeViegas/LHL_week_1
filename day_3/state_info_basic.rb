require "pry"

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

# Task 1
#Insert two additional states into the Hash, but without modifying the initial Hash definition. 
#Instead, add in these new kv pairs after the states object is defined.

@states.merge!({:IL => 'Illinois'})
@states.merge!({:OH => 'Ohio'})


#Task 2
# Declare another hash called cities where the keys are again the state code but the values are 
# arrays of city names.
# Add a few (2 to 4) cities for each state.
@cities = {
  OR: ['Portland', 'Salem', 'Eugene', 'Bend'],
  FL: ['Miami', 'Quincy'],
  CA: ['San Francisco', 'Los Angeles'],
  NY: ['New York']
}


@cities.merge!({:IL => ['Chicago', 'Springfield']})
@cities.merge!({:MI => ['Michigan']})
#puts cities

#Task 3
# Define a method describe_state that:
# Takes as input a state code (eg: 'CA')
# Returns the details of that state, including a list of its cities 
# (eg: 'CA is for California. It has 2 major cities: San Francisco, LA')
def describe_state(state_code)
  string_to_return = "#{state_code} is for #{@states.fetch(state_code.to_sym,nil)}. It has #{(@cities.fetch(state_code.to_sym,nil)).length} major cities: #{(@cities.fetch(state_code.to_sym,nil)).join(",")}"

end

# commenting so I don't have to keep inputting
# puts "Please enter state abbr: "
# input_state = gets.chomp
# input_state.upcase!
# puts describe_state(input_state)

#Task 4
# Declare another Hash called taxes which is responsible for defining taxes for each of the states 
# (eg: 7.5 for 7.5%). You can just make up the values... though I cannot guarantee that the US Gov't 
# will not come after you for misrepresenting their tax information.

@taxes = {
  OR: 7.0,
  FL: 2.0,
  CA: 1.0,
  NY: 9.0,
  MI: 6.0
}



# Task 5
# Define another method called calculate_tax which:
# Takes as input the state code as well as a dollar amount (eg: 123.49)
# Determines the tax rate to use based on the provided state
# Calculates the tax amount based on that rate
# Returns the tax amount rounded to 2 decimal places (eg: 44.53)
# Refer to the same tips as Task 3
def calculate_tax(state_code, dol_amt)
  #convert input state to caps
  state_code.upcase!
  #return $ tax amount by: (takes input $ and converts to float) mult. the return from #fetch of the % 
  ((dol_amt.to_f) *(@taxes.fetch(state_code.to_sym, nil)/100)).round(2)
  
end

# commented so I don't have to keep inputting
# puts "Please enter state abbr: "
# input_state = gets.chomp
# input_state.upcase!
# puts "Please enter dollar amount as numbers/decimal"
# input_dol_amt = gets.chomp
# tx_amt_rounded =  calculate_tax(input_state, input_dol_amt)
# puts "The tax amount rounded is: #{tx_amt_rounded}"


# Task 6
# Define a method find_state_for_city which should:
# Take as input the name of a city
# Return the state code for where that city is located

def find_state_for_city(input_city)
  state_to_return = "not found, please check input"

  @cities.select {|state_name, c_list|

   if c_list.include?input_city
    state_to_return =  "found in #{state_name.to_s}"
  end

}

state_to_return

end

puts "please put a city to find out state. for now, you need to capitalize each new word"
i_city = gets.chomp
rtrn_state =  find_state_for_city(i_city)
puts "#{i_city} is #{rtrn_state}"