def create_rocks
  30.times.map do |_i|
    # puts i
    rand(1..200)
  end
end

# puts rocks.join(', ')
max_rock = 0
rocks = create_rocks
rocks.each do |rock|
  max_rock = rock if max_rock < rock
end
puts "Heaviest rock is: #{max_rock}"

puts "Heaviest rock is: #{rocks.inject { |max_rock, rock| max_rock > rock ? max_rock : rock }}"

def rock_judger(rocks_prevrr)
  if rocks_arr.length <= 2 # the base case
    prev = rocks_arr.first
    b = rocks_arr.last
  else
    prev = rock_judger(rocks_arr.slice!(0, rocks_arr.length / 2))
    b = rock_judger(rocks_arr)
  end

  return prev > b ? prev : b
end
puts "Heaviest rock is: #{rock_judger(rocks.clone)}"

def rock_judger2(r_prevrr)
  count = r_arr.length
  prev, b = count <= 2 ? [r_arr[0], r_arr[-1]] : [rock_judger2(r_arr.pop(count / 2)), rock_judger2(r_arr)]
  return prev > b ? prev : b
end

puts "Heaviest rock is: #{rock_judger2(rocks.clone)}"
