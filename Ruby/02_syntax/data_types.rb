a = 1
puts a.class

b = 1.5
puts b.class

c = 'Some string'
puts c.class

# Symbols are specific to Ruby
#   They are like strings, but re-use memory
d = :symbol
puts d.class


### Data Structures ###

# arrays
arr = [1, 2, 3, 4.5, 'string', :symbol, [:another_array]]
puts arr.class

arr.each do |element|
  puts element.inspect
end

# hashes - the most versatile data structures
hash = {
  1 => :one,
  2 => :two,
  3 => :three,
  :symbol => [ :deep_array, {
    type: :another_hash  # special syntax for symbol keys with : at the key end
  }]
}

puts hash.class

### Weak typing ###
puts hash.is_a? Hash
puts arr.is_a? Hash
puts a.is_a? String



