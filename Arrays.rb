a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

# Prints to console the item at that index in the array
puts a.at(1)
puts a.fetch(2)

# Deletes item from index entered in the array
c.delete(0)

# Reverses an array
puts a.reverse

# Returns the amount of items in the array
puts a.length

# Sorts array numerically and alphabetically
puts a.sort
puts b.sort

# Copys the array at a certain index or series of indexes 
puts a.slice(2)
puts a.slice(2..4)

# Randomly shuffles your array
puts b.shuffle

# Concatenates all the elements in the array into a string
puts a.join
puts b.join

# Inserts an element into the array at the specified index along with the value being inserted
puts a.insert(1, "<- Inserted")

# Returns the values at the specified indexes
puts a.values_at(1)
puts a.values_at(1..3)