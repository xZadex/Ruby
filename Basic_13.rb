# Basic 13 Assignment

# 1.)
# (1..255).each { |i| puts i}

# 2.)
# (1..255).each {|i| puts i unless i % 2 == 0}

# 3.)
# x = 0; (0..255).each { |i| x += i; puts "New number: #{i} Sum: #{x}" }

# 4.)
# [1,3,5,7,9,13].each {|i| puts i }

# 5.)
# puts [-3, 0, 46].max

# 6.)
# x = [1,2,3,4,5,6,7,8]; puts x.sum(0.0) / x.length

# 7.)
# y = (0..255).select { |i| i % 2 == 1 }
# puts y.inspect

# 8.)
# def greater_than_y(array, num)
#     x = 0
#     for i in array
#         if i > num
#             x += 1
#         end
#     end
#     return x
# end

# puts greater_than_y([1,3,5,7], 0)

# 9.)
# def square_the_values(array)
#     new_array = []
#     for i in array
#         new_array.insert(-1, i*i)
#     end
#     new_array.inspect
# end

# puts square_the_values([1,5,10,-2])

# 10.)
# def eliminate_negative_numbers(array)
#     new_array = []
#     for i in array
#         if i <= 0
#             new_array.insert(-1, 0)
#         else
#             new_array.insert(-1, i)
#         end
#     end
#     new_array
# end

# puts eliminate_negative_numbers([1,5,10,7,-2]).inspect

# 11.)
# def max_min_avg(array)
#     answers = Hash.new("answer")
#     answers = {"Min" => array.min, "Max" => array.max, "Average" => array.sum/array.size}
# end

# puts max_min_avg([1, 5, 10, -2, -10, 25, 212])

# 12.)
# def shifting(array)
#     array.slice(1..array.size).insert(-1, 0)
# end

# puts shifting([1,5,10,7,-2]).inspect

# 13.)
# def number_to_string(array)
#     new_array = []
#     for i in array
#         if i < 0
#             new_array.insert(-1, 'Dojo')
#         else
#             new_array.insert(-1, i)
#         end
#     end
#     new_array
# end

# puts number_to_string([-1,-3,2]).inspect