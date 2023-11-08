
# 1.)
# def sum_and_greater_than_10(array)
#     greater_than_10 = array.find_all { |obj| obj > 10}
#     x = 0; array.each {|i| x+=i}
#     puts x
#     greater_than_10.inspect
# end

# puts sum_and_greater_than_10([3,5,1,2,7,9,8,13,25,32])

# 2.)
# def shuffle_names(array)
#     shorter_than_5 = []
#     array.shuffle.each {|i| puts i; i.length > 5 ? shorter_than_5 << i : ""}
#     shorter_than_5.sort.inspect
# end

# puts shuffle_names(["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"])

# 3.)
# def alphabets
#     letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
#     shuffled = letters.shuffle
#     if shuffled[0] == "a" || shuffled[0] == "e" || shuffled[0] == "i" || shuffled[0] == "o" || shuffled[0] == "u"
#         puts "#{shuffled[0]} is a vowel!"
#         puts "#{shuffled[-1]}"
#     else
#         puts "#{shuffled[0]}"
#         puts "#{shuffled[-1]}"
#     end
# end

# alphabets()

# 4.)
# def random10
#     array = []
#     for i in 1..10
#         array << rand(55..100)
#     end
#     array.inspect
# end

# puts random10()

# 5.)
# def random10Sorted
#     array = []
#     for i in 1..10
#         array << rand(55..100)
#     end
#     puts array.min
#     puts array.max
#     array.sort.inspect
# end

# puts random10Sorted()

# 6.)
# def random_strings
#     array = []
#     for i in 1..10
#         x = ""
#         for i in 1..5
#             x += (65+rand(26)).chr 
#         end
#         array << x
#     end
#     return array
# end

# puts random_strings()