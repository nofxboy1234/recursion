# def count_down(n)
#   for i in (1..n).to_a.reverse do
#     puts i
#   end
#   puts 'Hooray'
# end
# count_down(3)

# def count_down_recursive(n)
#   if n <= 0
#     puts 'Hooray'
#     return
#   end

#   puts n
#   count_down_recursive(n - 1)
# end
# count_down(3)

# def sum_range(n)
#   total = 0
#   for i in (1..n).to_a.reverse do
#     total += i
#   end
#   total
# end
# puts sum_range(3)

# def sum_range_recursive(n)
#   return 0 if n <= 0

#   sum_range_recursive(n - 1) + n
# end
# puts sum_range(3)

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

person = {
  name: 'John',
  children: [
    {
      name: 'Jim',
      children: []
    },
    {
      name: 'Zoe',
      children: [
        { name: 'Kyle', children: [] },
        { name: 'Sophia', children: [] }
      ]
    }
  ]
}

require 'pry-byebug'

def get_all_children_names(person)
  nested_child_names = person[:children].flat_map do |child|
    get_all_children_names(child)
  end
  child_names = person[:children].map { |p| p[:name] }
  child_names.concat(nested_child_names)
end

# p get_all_children_names(person)

## Post pseudo analysis code
# --get_all_children_names for 'John'
#   person is 'John'

#   'John' nested_child_names is [{'Jim'}, {'Zoe'}]

#     child is: 'Jim' - 1 / 2

#       --get_all_children_names for 'Jim'
#       person is 'Jim'
#       'Jim' nested_child_names is []
#       'Jim' child_names is: []
#       implicit return [].concat([]) => []

#   'John' nested_child_names is [[], {'Zoe'}]

#     child is: 'Zoe' - 2 / 2

#     --get_all_children_names for 'Zoe'
#     person is 'Zoe'

#     'Zoe' nested_child_names is ['Kyle', 'Sophia']

#       child is: 'Kyle' - 1 / 2

#         --get_all_children_names for 'Kyle'
#         person is 'Kyle'
#         'Kyle' nested_child_names is []
#         'Kyle' child_names is: []
#         implicit return [].concat([]) => []

#     'Zoe' nested_child_names is [[], 'Sophia']

#       child is: 'Sophia' - 2 / 2

#         --get_all_children_names for 'Sophia'
#         person is 'Sophia'
#         'Sophia' nested_child_names is []
#         'Sophia' child_names is: []
#         implicit return [].concat([]) => []

#     'Zoe' nested_child_names is [[], []]
#     'Zoe' child_names is: ['Kyle', 'Sophia']
#     implicit return ['Kyle', 'Sophia'].concat([]) => ['Kyle', 'Sophia']

#   'John' nested_child_names is [[], ['Kyle', 'Sophia']]
#   'John' child_names is: ['Jim', 'Zoe']
#   implicit return ['Jim', 'Zoe'].concat(['Kyle', 'Sophia']) => ['Jim', 'Zoe', 'Kyle', 'Sophia']

# p [[1, 2], 3].flatten
# p [[1, 2], 3].flatten(1)
# p [[1, [2]], 3]

# p [[1, [2]], 3].flatten(1)
# p [[1, [2]], 3].flatten(2)

# arr1 = [1, 2, 1]
# result = arr1.flat_map { |num| num == 2 ? [2, 2] : 3 }
# p result
# result = arr1.flat_map { |num| num == 2 ? [[2, 2]] : 3 }
# p result
# a = {foo: 0, bar: 1, baz: 2}.map {|key, value| [key, value] } # => [:foo, 0, :bar, 1, :baz, 2]
# p a
# a = {foo: 0, bar: 1, baz: 2}.flat_map {|key, value| [key, value] } # => [:foo, 0, :bar, 1, :baz, 2]
# p a

# a = [0, 1, 2, 3].flatten(1)
# b = a.map {|element| [element, -element] }
# p b

# a = [0, 1, 2, 3].map {|element| [element, -element] }
# b = a.flatten(1)
# p b

# p [0, 1, 2, 3].flat_map {|element| [element, -element] }

# def fact(n)
#   return 1 if n == 1

#   n * fact(n - 1)
# end
# p fact(3)

# def fact2(n)
#   product = 1
#   while n > 0
#     product *= n
#     n -= 1
#   end
#   product
# end
# p fact2(3)

# def collatz(n, steps = 0)
#   return steps if n == 1

#   steps += 1
#   if n.even?
#     collatz(n / 2, steps)
#   elsif n.odd?
#     collatz(3 * n + 1, steps)
#   end
# end
# p collatz(1)
# p collatz(2)
# p collatz(3)
# p collatz(4)
# p collatz(5)
# p collatz(6)
# p collatz(7)
# p collatz(8)
# p collatz(15)
# p collatz(27)
# p collatz(50)

# Fibonacci Number Sequence: https://youtu.be/mz6tAJMVmfM?t=517

def palindrome?(str, reversed = '')
  unless reversed == ''
    return true if str.downcase == reversed.downcase

    return false

  end

  reversed = str.reverse
  palindrome?(str, reversed)
end
# p palindrome?('bob')
# p palindrome?('blob')
# p palindrome?('cat')

# puts "\n"
def palindrome2?(string)
  if string.length == 1 || string.length == 0
    p string
    true
  elsif string[0] == string[-1]
    palindrome2?(string[1..-2])
  else
    false
  end
end
# p palindrome2?('bob')
# p palindrome2?('blob')
# p palindrome2?('cat')

def bottles(n)
  case n
  when 0
    puts 'no more bottles of beer on the wall'
  when 1
    puts 'one more bottle of beer on the wall'
    bottles(n - 1)
  else
    puts "#{n} bottles of beer on the wall"
    bottles(n - 1)
  end
end
# bottles(3)

# 0, 1, 1, 2, 3, 5, 8, 13, 21
def fib_value(n, count = 0, current_next = [0, 1])
  return current_next[0] if n == count

  fib_value(n, count + 1, [current_next[1], current_next[0] + current_next[1]])
end
# p fib_value(0)
# p fib_value(1)
# p fib_value(2)
# p fib_value(3)
# p fib_value(4)
# p fib_value(5)
# p fib_value(6)
# p fib_value(7)
# p fib_value(8)

# ---------------------
# --fib_value(4, 0, [0, 1])
#   n is 4
#   count is 0
#   prev is [0, 1]

#   n not equal to count so:
#   --fib_value(4, 1, [1, 1])
#     n is 4
#     count is 1
#     prev is [1, 1]

#     n not equal to count so:
#     --fib_value(4, 2, [1, 2])
#       n is 4
#       count is 2
#       prev is [1, 2]

#       n not equal to count so:
#       --fib_value(4, 3, [2, 3])
#         n is 4
#         count is 3
#         prev is [2, 3]

#         n not equal to count so:
#         --fib_value(4, 4, [3, 5])
#           n is 4
#           count is 4
#           prev is [3, 5]

#           n equals count so:
#           return 3
# ---------------------

# 0, 1, 1, 2, 3, 5, 8, 13, 21
# 0, 1, 2, 3
def fib(num, tabs = 0)
  puts "#{'-' * tabs}num: #{num}"
  if num.zero?
    0
  elsif num == 1
    1
  else
    one_before_num = fib(num - 1, tabs + 2)
    two_before_num = fib(num - 2, tabs + 2)
    puts "#{'-' * tabs}#{[two_before_num, one_before_num]}"
  
    two_before_num + one_before_num
  end
end

p fib(3)
