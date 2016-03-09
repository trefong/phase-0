# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

end

def my_hash_finding_method(source, thing_to_find)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)

  source.map! do |x|
    if x.is_a? Integer
      x += thing_to_modify
    else
      x
    end
  end
end


def my_hash_modification_method!(source, thing_to_modify)
  source.each do |x,y|
    source[x] = y + thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
#map! runs a given block of code for each of the elements in place.
#.each calls the given block of code once for each element.
#.is_a? asks if something is something (like an integer) usually follows if.


# Person 3
def my_array_sorting_method(source)
end

def my_hash_sorting_method(source)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
end

def my_hash_deletion_method!(source, thing_to_delete)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
end

def my_hash_splitting_method(source, age)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#