def count_down(n)
  for i in (1..n).to_a.reverse do
    puts i
  end
  puts 'Hooray'
end
count_down(3)

def count_down_recursive(n)
  if n <= 0
    puts 'Hooray'
    return
  end

  puts n
  count_down_recursive(n - 1)
end
count_down(3)

def sum_range(n)
  total = 0
  for i in (1..n).to_a.reverse do
    total += i
  end
  total
end
puts sum_range(3)

def sum_range_recursive(n)
  return 0 if n <= 0

  sum_range_recursive(n - 1) + n
end
puts sum_range(3)

# call sum_range_recursive(3)
# n is 3
# n not less than or equal to 0, no return

# call sum_range_recursive(2)
# n is 2
# n not less than or equal to 0, no return

# call sum_range_recursive(1)
# n is 1
# n not less than or equal to 0, no return

# call sum_range_recursive(0)
# n is 0
# n is less than or equal to 0, return 0

# sum_range_recursive(1) => (0) + 1
# sum_range_recursive(2) => (1) + 2
# sum_range_recursive(3) => (3) + 3
#                        => 6
