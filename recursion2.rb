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
