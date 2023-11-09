# Class generic structure
# class User
#     attr_accessor :first_name, :last_name
#     def initialize(f_name, l_name)
#         @first_name = f_name
#         @last_name = l_name
#     end
# end
# steph = User.new("Stephen", "Curry")

# puts "His name is #{steph.first_name} #{steph.last_name}"


# Instance Methods
# class User
#     attr_accessor :first_name, :last_name
#     def initialize(f_name, l_name)
#         @first_name = f_name
#         @last_name = l_name
#     end

#     def shoot
#         puts "He shoots his shot...swish..another 3 pointer for #{self.last_name}"
#     end
# end
# steph = User.new("Stephen", "Curry")
# steph.shoot

# Class Methods
# class User
#     attr_accessor :first_name, :last_name
#     def initialize(f_name, l_name)
#         @first_name = f_name
#         @last_name = l_name
#     end

#     def self.foo
#         puts "This is a class method."
#     end
# end

# User.foo

# Variables
# Local Variable
# A regular variable in Ruby.

# Instance Variable
# Begins with @ and are available to instances of the class.

# Class Variable
# Begins with @@ and are available to the class itself

# Global Variable
# Begins with $. Avoid using this, if possible, since it is available everywhere.


# Class example with variables
# class CodingDojo 
#     attr_accessor :branch_id, :branch_name, :branch_address
#     @@no_of_branches = 0
#     def initialize(id, name, address) 
#         @branch_id = id 
#         @branch_name = name 
#         @branch_address = address 
#         @@no_of_branches += 1 
#         puts "Created branch #{@@no_of_branches}"
#     end
#     def hello 
#         puts "Hello CodingDojo!"
#     end
#     def display_all
#         puts "Branch ID: #{@branch_id}"
#         puts "Branch Name: #{@branch_name}" 
#         puts "Branch Address: #{@branch_address}"
#     end 
# end 
# # now using above class to create objects 
# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
# branch.display_all 
# branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
# branch2.display_all

# Example of using Self
# Let's create a Mammal class in a separate file and use self in our own class.

# class Mammal
#     def initialize
#         puts "I am alive"
#     end

#     def breath  
#         puts "Inhale and exhale"
#     end

#     def who_am_i
#         # printing the current object
#         puts self
#     end
# end

# my_mammal = Mammal.new # => "I am alive"
# my_mammal.who_am_i # => #<Mammal:0x007f9e86025dd8>
# my_mammal.who_am_i.breath # => undefined method `breath' for nil:NilClass (NoMethodError)Copycopy

# In the last line of our script, we tried to chain methods. However, we get a NoMethodError that 'breath' is an undefined method for a nil value. The reason is that since the puts method prints the value and returns nil, the value that is getting returned from our instance methods is nil. To be able to chain methods, our instance methods need to return an object, more specifically, they need to return self.

# class Mammal
#     def initialize
#         puts "I am alive"
#         self
#     end
#     def breath  
#         puts "Inhale and exhale"
#         self
#     end

#     def who_am_i
#         puts self
#         self
#     end
# end

# my_mammal = Mammal.new.who_am_i.breath


# Visibility & Inheritance

# Public
# class Mammal
# def breath  
#     puts "Inhale and exhale"
# end

# def eat
#     puts "Yum yum yum"
# end
# end
# class Human < Mammal # Human inherits from Mammal
# def subclass_method
#     breath
# end
# def another_method
#     self.eat
# end
# end
# person = Human.new
# person.subclass_method
# person.another_methodCopy


# Protected
# class Mammal
# # previous code removed for brevity

# def calling_speak
#     speak
# end

# protected
#     def speak
#     puts "I am a protected method"
#     end
# end
# class Human < Mammal
# # previous code removed for brevity

# def explicitly_speak
#     self.speak
# end

# def implicitily_speak
#     speak
# end
# end
# mammal = Mammal.new
# mammal.speak # => protected method `speak' called for #<Mammal:0x007fa5438183d8> (NoMethodError)
# mammal.calling_speak # => I am a protected method
# person = Human.new
# person.speak # => protected method `speak' called for #<Human:0x007fedfe824710> (NoMethodError)
# person.explicitly_speak # => I am a protected method
# person.implicitily_speak # => I am a protected methodCopy

# Private
# class Mammal
# # previous code removed for brevity

# def calling_cry
#     cry
# end

# private
#     def cry
#     puts "Sniff sniff..."
#     end
# end
# class Human < Mammal
# # previous code removed for brevity

# def explicitly_cry
#     self.cry
# end

# def implicitly_cry
#     cry
# end
# end
# mammal = Mammal.new
# mammal.calling_cry # => Sniff sniff...
# mammal.cry # => private method `cry' called for #<Mammal:0x007fd9830de5f8> (NoMethodError)
# person = Human.new
# person.cry # => private method `cry' called for #<Human:0x007f8f298de248> (NoMethodError)
# person.explicitly_cry # => `explicitly_cry': private method `cry' called for #<Human:0x007f87a30bf450> (NoMethodError)
# person.implicitly_cry # => Sniff sniff...Copy