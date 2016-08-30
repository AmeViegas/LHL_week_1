# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# Define a method find that:
#
# Takes in an id
# Returns the candidate with that :id
# If there is no candidate with that id, it naturally returns nil
def find(id)
  @candidates.select { |person| person[:id] == id.to_i  }
end

# More methods will go below


# Define a method qualified_candidates that:
# Tip: Consider creating other methods to help keep this one clean
# Takes in the collection of candidates
# Returns a subset of the candidates that meet the following criteria:
# Are experienced

# Define a method experienced? that:
#
# Takes in a single candidate (hash). Note: not the array.
# Returns true if the candidate has 2 years of experience or more
# Returns false otherwise
# Note: this is a method that gives you back data, it should not output (puts) anything.
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end


# Have 100 or more Github points
def over_requisite_github_points(person, points)
  person[:github_points] > points
end
# Know at least Ruby or Python
def has_required_languages(person, languages)
  (languages & person[:languages]).any?
end
# Applied in the last 15 days
def applied_during_right_period(person, period)
  person[:date_applied] >= period.days.ago.to_date
end
# Are over the age of 17 (18+)
def of_age?(person, age_over)
  person[:age] > age_over
end

# Define a method ordered_by_qualifications that:
#
# Takes in a collection of candidates
# Instead of filtering on the candidates, returns them all back but reordered
# such that:
# Candidates with the most experience are at the top
# For Candidates that have the same years of experience, they are further
# sorted by their number of Github points (highest first)
def sort_all_candidates(candidate_list)
  candidate_list.sort_by { |person|
    [person[:years_of_experience],person[:github_points] ]}.reverse
  end
