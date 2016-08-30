# You work in a sign shop, making banner signs for customers. Customers are going to come in and want a price quote for a sign based on the dimensions and the colours.

# Here are your rules:

# Signs cost $15 per square foot.
# If a sign has two colours or fewer, add $10 for each colour. *** made assumption that there should be at least 1 color.
# If a sign has more than two colours, add $15 for each colour.
# Tax is 15%.
# The boss insists that he just wants one function that he can put the dimensions and colour count in, and get the total back.

COST_PER_SQFT = 15
COST_LE_2_COLORS = 10
COST_GT_2_COLORS = 15
TAX_IS = 0.15

# check if inputs are valid
def check_if_valid (color, sqft)
  check_sqft(sqft) && check_color(color)
end

def check_sqft(sqft)
  sqft > 0
end

def check_color(colour)
  colour > 0
end

# calculate price
def calc_price(color, sqft)
  pre_tax  =  (calc_sqft_cost(sqft) + calc_color_cost(color))
  tax = calc_tax(pre_tax)
  tax + pre_tax
end

def calc_sqft_cost(sqft)
  sqft * COST_PER_SQFT
end

def calc_color_cost(colour)
  if colour > 2
     COST_GT_2_COLORS
  else
    COST_LE_2_COLORS
  end

end
def calc_tax(cost)
   cost * TAX_IS
end

def main
  puts "Please enter color count"
  input_color = gets.chomp.to_i
  puts "Please enter square foot of sign"
  input_sqft = gets.chomp.to_i
  if check_if_valid(input_color,input_sqft)
    cost = calc_price(input_color,input_sqft)
    puts "The quote price is #{cost}"
  else
    puts "You don't know what you are doing. Go get trained!"
  end
end

# start app
main
