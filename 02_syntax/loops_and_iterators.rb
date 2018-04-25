a = [1, 2, 3, 4]

for element in a do
  print "#{element} "

  break if element == 3
  # break is useful when trying to find an element in an array
  #   if the element is found, no more iterations are done
end

puts
puts

i = 0
while i < 10
  i = i + 1 # Without this it would be an infinite loop. Kill that with Ctrl+c
  puts "I am greeting you for the #{i}th time"
end

puts

### Special Ruby loops and iterators ###

10.times do |i|
  puts "Greetings from times: #{i}"
end

puts

a.each{|n|
  puts n
}

puts

a.each_with_index{|n, i|
  puts "The element #{n} is on index #{i}"
}

puts

transformed_a = a.map{|n|
  n*n
}

puts transformed_a.inspect

# sum using a reduce
sum = a.reduce(0) do |acc, element|
  acc + element
end

puts sum
