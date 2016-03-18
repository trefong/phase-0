#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:A name in the form of a string.
# Output: A string greeting with the corresponding name.
# Steps:
  #initialize NameData class with an instance variable called name
  #intialize Greetings class with an instance of NameData.
  #create a method that will display the NameData plus a greeting string.

class NameData
  attr_reader :name
  def initialize
    @name = "Traci"
  end

end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello "  + @namedata.name + ", it's nice to meet you!"
  end

end

greet = Greetings.new
greet.hello

# Reflection
=begin
  Release 1
  -What are these methods doing?
  These methods are establishing what the person's age, name, and occupation are and changing them when they need to be changed.

  -How are they modifying or returning the value of instance variables?
  Each method is modifying the instance variable it has based on the assumption that the values are still what it was declared in the initialize method.

  Release 2
  -What changed between the last release and this release?
  The only thing that changed was that the what_is_age method was removed.

  -What was replaced?
  The what_is_age method was with attr_reader :age at line 5.

  -Is this code simpler than the last?
  It is more simple but a person who has less coding experience could more easily read the first version.

  Release 3
  - What changed between the last relase and this release?
  Attr_writer :age was added at line 6, the change_my_age method was removed, and the instance_of_profile.change_my_name.

  -What was replaced?
  The instance_of_profile.change_my_age was replaced with instance_of_profile.age on line 68.

  -Is this code simpler than the last?
  This code is more simple than the last, since it requires less.

  Release 6
  -What is a reader method?
    The reader method allows a instance variable to be recoginzed in Ruby without having to define an entire method.
  -What is a writer method?
    The writer method allows the instance variable to be used by Ruby without having to define an entire method.
  -What do the attr methods do for you?
  The attr methods allow me to simplify my code by making simple methods that declare and write instance variables unnecessary.
  -Should you always use an accessor to cover your bases? Why or why not?
  I think it would be a good idea to always use accesor methods because it simplifies code.
  -What is confusing to you about these methods?
  Sometimes its confusing where you are allowed to use the methods that you declare using the accesor methods.
=end