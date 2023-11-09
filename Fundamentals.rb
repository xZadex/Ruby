# puts "This is in the middle"

# BEGIN {
#   puts "This is in the begin block"
# }

# END {
#   puts "This is in the end block"
# }


# first_name = "Nicholas"
# last_name = "Gibson"

# puts "Your name is #{first_name} #{last_name}"


# puts "This is for using \" apostrophy in string"

# x = puts "Hello World"
# puts x

# emptyString = ""
# emptyString.empty?


# x = 12
# if x >= 10
#     puts "X is greater than or equal to 10"
# else
#     puts "x is less than 10"
# end


# number = 15
# if number % 3 == 0 && number % 5 == 0
#     puts "FizzBuzz"
# elsif number % 3 == 0
#     puts "Fizz"
# elsif number % 5 == 0
#     puts "Buzz"
# end

# puts "I am positive" unless nil

# i = 0
# num = 5
# while i < num do
#     puts "Inside the loop i = #{i}"
#     i += 1
# end

# i = 0
# num = 5
# while i < num do
#     puts "Inside the loop i = #{i}"
#     i += 1  
#     break if i == 2  
# end

# for i in 0..3 
#     puts "Value of local variable is #{i}" 
# end

# for i in 0..5 
#     puts "Value of local variable is #{i}" 
#     break if i == 2
# end

# for i in 0..5 
#     next if i == 2
#     puts "Value of local variable is #{i}"   
# end

# def hello_world
#     puts "hello world"
# end

# hello_world

# def say_hello(name1, name2)
#     puts "hello, #{name1} and #{name2}"
# end
# say_hello("oscar", "eduardo")


# def say_hello name1="oscar", name2="shane"
#     puts "hello, #{name1} and #{name2}"
# end
# say_hello "oscar"

# def say_hello name1="oscar", name2="shane"
#     "hello, #{name1} and #{name2}"
# end
# puts say_hello "oscar", "eduardo"

# def say_hello name1, name2
#     if name1.empty? or name2.empty?
#         return "Who are you?!"
#     end
#     # Doesn't reach the last line because we used return
#     "hello, #{name1} and #{name2}"
# end
# puts say_hello "", ""

# x = "Ruby!" * 2
# puts x

# puts "Chuncky" << "Bacon"

# puts "Chunky"[2..3]

# puts "ruBy".capitalize

# puts "team".include?("i")

# puts "matz".length

# puts "goodbye" if false

# puts "ruby" unless 0
# puts "ruby" unless ""
# puts "ruby" unless nil

# puts "matz" unless false
# puts "matz" unless nil
# puts "matz" unless []


# Iterators
# .any? { |obj| block } => true or false
# ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true

# .each => calls block once for each element in ruby self, passing that element as a block parameter.
# e.g. ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--

# .collect { |obj| block } => returns a new array with the results of running block once for every element in enum
# e.g. (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
# e.g. (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]

# .detect/.find => returns the first for which block is not false.
# e.g. (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
# e.g. (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35

# .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
# e.g. (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

# .reject { |obj| block } => opposite of find_all
# e.g. (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

# .upto(limit) => iterates block up to the int number
# e.g. 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10

# def block_one 
#     puts "Hello World!" 
#     yield 
# end 
# block_one { puts "Here's the block." }

# def block_two(num1, num2)
#     puts "The difference between #{num1} and #{num2} is:"
#     yield(num1, num2)
# end

# block_two(150, 245) { |num1, num2| puts num1 - num2 }

# puts [1,2,3,4,5].select {|elem| elem.even?}

# x = Array.new(3)
# puts x

# y = Array.new(4, true)
# puts y

# puts Array.new(4, 2).reject { |elem| elem.even? }

# puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true
# puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
# puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]
# puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
# puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
# puts (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]
# puts (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]


