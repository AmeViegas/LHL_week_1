#pop bottles
# For every two empty bottles, you can get one free (full) bottle of pop
# For every four bottle caps, you can get one free (full) bottle of pop
# Each bottle of pop costs $2 to purchase

def calc_bottles(spend_amt)
  spend_amt.to_i/2
end

def recylable_bottles(bottle_ct)
  bottle_ct.to_i/2
end

def recylable_bottles(bottle_ct)
  bottle_ct.to_i/2
end

def recylable_tops(bottle_ct)
  bottle_ct.to_i/4
end

def more_bottles(bottle_ct)
  bot1 = bottle_ct % 2
  bot2 = bottle_ct % 4

end

done = false

while done == false
  puts "How much is the customer spending?"
  spend_amt = gets.to_i
  if spend_amt <= 0
    done = true
    break
  end
  if spend_amt < 2 \
    && bottle_recycling == 0 \
    && cap_recycling == 0
    puts "Customer does not have enough for pop"
  else
    bottles_bought = calc_bottles(spend_amt)
    puts "Number of bottles bought #{bottles_bought} "
    puts "Recycling bottles, gets you #{recylable_bottles(bottles_bought)} free pop"
    puts "Recycling bottle tops, gets you #{recylable_tops(bottles_bought)} free pop"
  end
end
