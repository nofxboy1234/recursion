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
