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
# def greater_than(array, num)
#     x = 0
#     array.each { |i| x += 1 if i > num }
#     return x
# end

# puts greater_than([1,2,3,4,5], 3)

# 9.)
# def square_root(arr)
#     new_arr = []
#     for i in arr
#         new_arr.insert(-1, i*i)
#     end
#     return new_arr.inspect
# end

# puts square_root([1,5,10,-2])

# 10.)
# def remove_negative(array)
#     new_arr = []
#     for i in array
#         if i >= 0
#             new_arr.insert(-1, i)
#         else
#             new_arr.insert(-1, 0)
#         end
#     end
#     return new_arr
# end

# puts remove_negative([1,5,10,-2, -22, 1, 0, 24])

# 11.)
# def max_min_avg(array)
#     min = array.min
#     max = array.max
#     avg = 0

#     for i in array
#         avg += i
#     end
    
#     avg = avg / array.length

#     return "Max: #{max} Min: #{min} Avg: #{avg}"
# end

# puts max_min_avg([1,5,10,-2])

# 12.)
