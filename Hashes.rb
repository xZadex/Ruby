our_hash = {first_name: "Nicholas", last_name: "Gibson"}
our_hash.delete(:last_name)
puts our_hash

empty_hash = {}
puts empty_hash.empty?

single_key = {word: "Hello"}
puts single_key.has_key?(:word)
puts single_key.has_value?("Hello")