Lighthouse Lab week 1 assignments 

**Shakil The Dog (CR) - requirements**
    Your cofounder has left for Hawaii and asked that you take care of his puppy for 2 weeks.

    As it turns out, this dog is a menace and won’t stop barking. His name is Shakil. He exhibits the following inexplicable behavior:

    If you say anything to him, he will just bark back once ("woof"), except:

    If you pretend to be a dog and bark ("woof") at him, he will go a bit nuts and woof back at you three times, pretty loudly: "WOOF WOOF WOOF"
    If you explicitly use his name and tell him to stop (either "shakil stop" or "Shakil STOP!") he will not respond back with a bark (enjoy your moment of peace)
    If you pretend to be a cat and "meow" at him, he will go berserk and woof back at you five times: "woof woof woof woof woof"
    If you say anything else but with the word "treat" thrown into the mix, he won’t bark back, thinking he’ll be getting a treat
    If you say "go away" he manages to actually leave you alone by leaving the room.
    We'll use a method in our ruby file to simulate the interaction with this creature.
  
**Sorting Algorithm - aka: Max bubble Sort - requirements**
  Task: Currently, the built-in Array#sort method is being used (line 3) to implement the logic for the sort method. As an exercise, instead of leveraging this built-in method, implement your own sort logic such that the resulting output from this ruby script stays the same. See http://en.wikipedia.org/wiki/Sorting_algorithm for different sorting algorithms. At a minimum implement Bubble Sort.

  Coding Your Code - requirements:
  Scenario
    You work in a sign shop, making banner signs for customers. Customers are going to come in and want a price quote for a sign based on the dimensions and the colours.

    Here are your rules:

    Signs cost $15 per square foot.
    If a sign has two colours or fewer, add $10 for each colour.
    If a sign has more than two colours, add $15 for each colour.
    Tax is 15%.
    The boss insists that he just wants one function that he can put the dimensions and colour count in, and get the total back.
**States & Cities (CR) - requirements**

    Task 1
    Insert two additional states into the Hash, but without modifying the initial Hash definition. Instead, add in these new kv pairs after the states object is defined.

    Task 2
    Declare another hash called cities where the keys are again the state code but the values are arrays of city names.

    Add a few (2 to 4) cities for each state.

    Task 3
    Define a method describe_state that:

    Takes as input a state code (eg: 'CA')
    Returns the details of that state, including a list of its cities (eg: 'CA is for California. It has 2 major cities: San Francisco, LA')
    Tips:

    The method should return the string, not output it
    Write test code to output the return value to make sure it works, like we have done with previous exercises
    Write the code incrementally:
    Write the empty method
    Write the test code after the method definition, that will actually be doing the puts of the method's return value.
    Implement a small part of the method instead of trying to have it return the final string. Eg: 'CA' is for California' only.
    Add more functionality and test code
    Task 4
    Declare another Hash called taxes which is responsible for defining taxes for each of the states (eg: 7.5 for 7.5%). You can just make up the values... though I cannot guarantee that the US Gov't will not come after you for misrepresenting their tax information.

    Task 5
    Define another method called calculate_tax which:

    Takes as input the state code as well as a dollar amount (eg: 123.49)
    Determines the tax rate to use based on the provided state
    Calculates the tax amount based on that rate
    Returns the tax amount rounded to 2 decimal places (eg: 44.53)
    Refer to the same tips as Task 3

    Task 6
    Define a method find_state_for_city which should:

    Take as input the name of a city
    Return the state code for where that city is located
    Of course, for your test code, find states for cities that are actually mentioned in your cities hash

    Bonus Tasks (Optional)
    Note: Please complete the required tasks prior to attempting this bonus.

    Task 7

    Refactor your code such that instead of having two separate hashes states and cities, you would just have one hash, and the information about the state name and all of its cities would be available in that one hash.

    Task 8

    Unless you've already done so previously, improve your methods to handle "edge cases" to make them more robust.


**Character Counting - requirements**
    
    Write a method count_letters that can tell us all the unique characters that exist in a string that is passed into the method. Furthermore, the method should also report back how many instances of each letter were found in the string.
    Methods generally return one object. That object can be a number, a boolean, nothing (nil), a symbol, a string, and so on. However, we need to return an object that can represent all the characters found in the input string, and their respective counts.

    What type of object should be returned back by count_letters? A Hash comes to mind!

    So count_letters("lighthouse in the house...") would return:

    {
      'l' => 1,
      'i' => 2,
      'g' => 1,
      'h' => 4,
      't' => 2,
      'o' => 2,
      'u' => 2,
      's' => 2,
      'e' => 3,
      'n' => 1,
      '.' => 3
    }
    Tip: Use .inspect on any object to turn it into a debug-friendly string... great for putsing objects like Hashes to the screen.

    Also, note that we are skipping and not counting spaces.

    Return indices instead
    Instead of returning just the count of each letter, the requirement has changed to return all the indices (positions) in the string where each character is found. So for each letter, we're no longer returning just one number but rather multiple numbers (potentially)

    What would the resulting hash look like with the example string above?

    Update your method so that it works this way now.

**Poppin' Bottles - requirements**

    You've just been hired at Lighthouse Markets, a reputable (and thoroughly fictional) grocery store chain. One of the primary features of Lighthouse Markets is their recycling program on pop bottles. Here is how the program works:
      For every two empty bottles, you can get one free (full) bottle of pop
      For every four bottle caps, you can get one free (full) bottle of pop
      Each bottle of pop costs $2 to purchase
      Given these parameters, write a program so that you can figure out how many total bottles of pop can be redeemed given a customer investment.
    
      Task 1
      Figure out the algorithm that will calculate this. For example, given a $20 investment, the customer will get 10 bottles of pop. That gives a supply of both bottles and bottle caps that can be used to redeem for further bottles, which will then produce a further supply for recycling.
    
      Task 2
      Write a REPL that will prompt the user for the amount (in dollars) that the customer is going to spend. The REPL will then calculate the total number of bottles that the customer will receive and prompt for the next customer's amount.
    
      Task 3
      Enhance the output of your program so that once the amount has been given, it provides a breakdown of how many bottles were purchased, how many were obtained through bottle recycling, and how many were obtained through bottle cap recycling.
    
      Task 4
      Add to the output, so that the program will tell the customer how many bottles and bottle caps they will have left over. We have to upsell the customer on buying more pop after all!
**Candidates (CR) - requirements**

     Congratulations! You just raised a seed round of $1M and are now trying to recruit developers for your new tech startup. We have a list of candidates that have applied and need to write a program to help us determine which are qualified.
  
    For the first time, we are writing a multi-file program that uses require to load dependencies and is also dependent on a few gems.
  
    The program also defines the Candidates collection as @candidates not candidates. This is how instance variables are defined. Since we are using multiple files and local variables are not available outside a given file, one of our options is to use instance variables to make sure that the @candidates array is available to the main.rb file.
  
    Warmup
    Take some time to get acquainted with the code
  
    List out the ruby files that are loaded (required) when we run ruby main.rb
    What does the pp method do? How is it different from puts (try it out!)?
    Why is ActiveSupport being used (what happens if we take it out)?
    Task 1 - Practice with Pry
    Uncomment the binding.pry call in main.rb and run the main.rb code.
  
    Try checking what the variable @candidates evaluates to. Tip: since the output will be longer than what can fit on the terminal, it will le t you use arrow keys or space bar to go down.
  
    Task 2 - Experienced Candidates
    Define a method experienced? that:
  
    Takes in a single candidate (hash). Note: not the array.
    Returns true if the candidate has 2 years of experience or more
    Returns false otherwise
    Note: this is a method that gives you back data, it should not output (puts) anything.
  
    Task 3 - Finding by :id
    Define a method find that:
  
    Takes in an id
    Returns the candidate with that :id
    If there is no candidate with that id, it naturally returns nil
    Task 4 - "Qualified" Candidates
    Define a method qualified_candidates that:
  
    Takes in the collection of candidates
    Returns a subset of the candidates that meet the following criteria:
    Are experienced
    Have 100 or more Github points
    Know at least Ruby or Python
    Applied in the last 15 days
    Are over the age of 17 (18+)
    Tip: Consider creating other methods to help keep this one clean
  
    Task 5 - Sort on Experience and Points
    Define a method ordered_by_qualifications that:
  
    Takes in a collection of candidates
    Instead of filtering on the candidates, returns them all back but reordered such that:
    Candidates with the most experience are at the top
    For Candidates that have the same years of experience, they are further sorted by their number of Github points (highest first)
    Task 6 - REPL-based Menu
    Create a REPL that presents the user with a menu where they can type in one of the following commands:
  
    find 1: This will display candidate with id 1
    all: This will print them all out to the screen (one per line)
    qualified: This will print only qualified candidates, ordered by experience and points (one per line)
    quit: Exit the REPL / program
    Bonus: When printing out candidates, colour the output based on their qualification (green for qualified, red for unqualified)

**Two Player Math Game**
  
    Create a 2-player guessing game where players take turns to answer simple addition problems. The math questions are automatically generated by the game. It should do this by picking two numbers between 1 and 20.
    
      Example prompt: "Player 1: What does 5 plus 3 equal?"
    
      Both players start with 3 lives. They lose a life if they mis-answer a question. If a player gets a question wrong, the game should output the new scores for both players, so players know where they stand.
    
      The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.
    
      As before, you can use gets.chomp to get input from users and puts for output.
  
**Blocks in Ruby**
 
        Implement the benchmark method in the benchmark_with_block.rb file from the Gist linked to this activity.
      
        The benchmark method takes a block and returns how much time it took to run that block.
        
**Yuppie Vancouverite - requirements**
 
        The Yuppie Vancouverite needs to rent an apartment downtown!
      
       Here we have a rent? method that helps them decide if they are going to an apartment based on some information about it. It's passed 3 key pieces of information that are used to determine this:
        
        Is the apartment furnished? Since this is a yes/no thing, it's a boolean (true/false)
        Is the apartment baller? Since this is a yes/no thing, it's a boolean (true/false)
        The monthly rent for the apartment. This is expected to be an integer (Fixnum)
        Firstly, They only want to rent it if it's baller (whatever that means!). Furthermore, they only want it if it's furnished but are willing to make an exception if it's rent is cheaper than 2100 per month (Ugh...Downtown Vancouver prices!)
        
        Steps:
        Write test code by outputting the return values for possible permutations of this method (at the bottom of this file)
        Based on the actual behavior (vs desired behavior), can you determine what the (buggy) logic is ACTUALLY checking?
        Having identified what is actually occurring vs what should occur, fix the bug such that the logic works as desired.
        Compare and discuss your solution (fix) with your peers. This includes your test cases. Did you cover all the possibilities? Did you have the same solution? Whose is better and why?
        How can you reduce the body/contents of this method down to one line? Effectively making it much simpler and cleaner. Do it!
          For the first time, we are writing a multi-file program that uses require to load dependencies and is also dependent on a few gems.
        

  
  


  
  
