def f(arg1, arg2, arg3 = 3)  # arg3 has a default value
  # early returns
  return 'arg1 is 1 ' if arg1 == 1
  return 'arg2 is 2 ' if arg1 == 2

  arg3 # implicit return
end

puts f(nil, nil)

# function with keyword arguments
def define_3d_point(x:, y:, z:)
  puts "Defining a point at [#{x}, #{y}, #{z}]"
end

define_3d_point(x: 1, y: 2, z: 3)

# lambda - anonymous function that can be passed around as an argument
add_two = lambda {|input| input + 2 }

def call_lambda_with(arg, some_lambda)
  puts some_lambda.call(arg)
end

call_lambda_with(3, add_two)

# variadic arguments - pass in as many as you want
def add_numbers(*numbers)
  puts numbers.sum
end

add_numbers 1, 2, 3, 4



