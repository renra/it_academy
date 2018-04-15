pole = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12, 13]]

for i in 0...pole.length
  for j in 0...pole[i].length
    puts pole[i][j]
  end
end

puts
i = 0

loop do
  i = i + 1
  puts "For iteration #{i}"

  break if i >= 10
end

puts

while i > 0
  puts "while iteration #{i}"
  i = i - 1
end

puts

pole.each do |element|
  puts element.length
end

puts

pole = [ 1, 2, 3, 4 ]

def print_array(array)
  array.each do |element|
    print "#{element} "
  end

  puts
end

print_array(pole)

puts

day_number2day = lambda do |day_number|
  case day_number
    when 0
      "Pondeli"
    when 1
      "Utery"
    when 2
      "Streda"
    when 3
      "Ctvrtek"
    when 4
      "Patek"
    when 5
      "Sobota"
    when 6
      "Nedele"
    else
      "Neznam"
  end
end

puts day_number2day.call(0)
puts day_number2day.call(4)
puts day_number2day.call(8)

puts

def full_name(first_name, middle_name, last_name)
  "#{first_name} #{middle_name} #{last_name}"
end

puts full_name("Leonardo", "da", "Vinci")

def full_name_with_keyword_args(first_name:, middle_name:, last_name:)
  "#{first_name} #{middle_name} #{last_name}"
end

puts full_name_with_keyword_args(first_name: "Leonardo", middle_name: "da", last_name: "Vinci")

