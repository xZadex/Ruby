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

class Mammal
    def initialize
        puts "I am alive"
        self
    end
    def breath  
        puts "Inhale and exhale"
        self
    end

    def who_am_i
        puts self
        self
    end
end

my_mammal = Mammal.new.who_am_i.breath