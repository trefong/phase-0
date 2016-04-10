# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
#input:A string of words
#output:A string of the same words that are reversed.
  #steps:
  #Define a method called reversed that takes a string
  #Break apart the string by space
  #Go through each word and reverse it
  #Print the sentence

# Initial Solution
def reverse_words (string)
  if string == ""
    p ""
  elsif
    words = string.split(" ")
  words.each { |word|
    word.reverse!
  }
  p words.join(" ")
end
end
reverse_words ("the dog is the cutest thing")
reverse_words ("")
reverse_words ("the wrong")


# Refactored Solution
def reverse_words (string)
  if string == ""
    p ""
  elsif
    words = string.split(" ")
  words.each { |word|
    word.reverse!
  }
  p words.join(" ")
end
end


# Reflection
#What concepts did you review in this challenge?
#I reviewed how to write methods and elseif statements.

#What is still confusing about Ruby?
#Something that confused me in this challenge that I need explaining, is why the tests wouldn't pass when I returned the result or printed it.

#What are you going to study to get more prepared for Phase 1?
#I'm going to review the methods and enumerables more so I can implement them.