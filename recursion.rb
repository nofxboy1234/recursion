rocks = 30.times.map do |_i|
  # puts i
  rand(1..200)
end
puts rocks.join(', ')
max_rock = 0

rocks.each do |rock|
  max_rock = rock if max_rock < rock
end

puts "Heaviest rock is: #{max_rock}"
puts "Heaviest rock is: #{rocks.inject { |max_rock, rock| max_rock > rock ? max_rock : rock }}"

def rock_judger(rocks_arr)
  if rocks_arr.length <= 2 # the base case
    a = rocks_arr[0]
    b = rocks_arr[-1]
  else
    a = rock_judger(rocks_arr.slice!(0, rocks_arr.length / 2))
    b = rock_judger(rocks_arr)
  end

  return a > b ? a : b
end

puts "Heaviest rock is: #{rock_judger(rocks)}"