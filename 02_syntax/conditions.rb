if Time.now.hour > 9
  puts 'It is after 9'
else
  puts 'It is not after 9'
end

# ternary operator - does the same thing, just syntax sugar
Time.now.hour > 14 ? puts('It is after 14') : puts('It is not after 14')

case Time.now.hour
  when 0
    puts('Go on sleeping')
  when 1
    puts('Go on sleeping')
  when 2
    puts('Go on sleeping')
  when 3
    puts('Go on sleeping')
  when 4
    puts('Go on sleeping')
  when (5..24)
    puts('Get up you lazy-ass')
  else
    puts 'What a strange hour'
end
