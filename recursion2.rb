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

p get_all_children_names(person)


# get_all_children_names for 'John'
# person is:
# {
#   name: 'John',
#   children: [
#     {
#       name: 'Jim',
#       children: []
#     },
#     {
#       name: 'Zoe',
#       children: [
#         { name: 'Kyle', children: [] },
#         { name: 'Sophia', children: [] }
#       ]
#     }
#   ]
# }

# person[:children] is:
# [
#   {
#     name: 'Jim',
#     children: []
#   },
#   {
#     name: 'Zoe',
#     children: [
#       { name: 'Kyle', children: [] },
#       { name: 'Sophia', children: [] }
#     ]
#   }
# ]
# 'John' nested_child_names is ['Jim', 'Zoe']

#   child is: 'Jim' - 1 / 2
#   get_all_children_names for 'Jim'
#   person is:
#   {
#     name: 'Jim',
#     children: []
#   }
  
#   person[:children] is: []
#   'Jim' nested_child_names is []
  
#   child_names is: []
#   implicit return [].concat([]) => []

# 'John' nested_child_names is [[], 'Zoe']

#   child is: 'Zoe' - 2 / 2
#   get_all_children_names for 'Zoe'
#   person is:
#   {
#     name: 'Zoe',
#     children: [
#       { name: 'Kyle', children: [] },
#       { name: 'Sophia', children: [] }
#     ]
#   }

#   person[:children] is: ['Kyle', 'Sophia']
#   'Zoe' nested_child_names is ['Kyle', 'Sophia']
  
#     child is: 'Kyle' - 1 / 2
#     get_all_children_names for 'Kyle'
#     person is:{ name: 'Kyle', children: [] }

#     person[:children] is: []
#     'Kyle' nested_child_names is []

#     child_names is: []
#     implicit return [].concat([]) => []
  
#   'Zoe' nested_child_names is [[], 'Sophia']
#     child is: 'Sophia' - 2 / 2
#     get_all_children_names for 'Sophia'
#     person is:{ name: 'Sophia', children: [] }

#     person[:children] is: []
#     'Sophia' nested_child_names is []

#     child_names is: []
#     implicit return [].concat([]) => []
  
#   'Zoe' nested_child_names is [[], []]
#   child_names is: ['Kyle', 'Sophia']
#   implicit return [].concat([]) => ['Kyle', 'Sophia']

# 'John' nested_child_names is [[], ['Kyle', 'Sophia']]
# child_names is: ['Jim', 'Zoe']
# implicit return ['Jim', 'Zoe'].concat(['Kyle', 'Sophia']) => ['Jim', 'Zoe', 'Kyle', 'Sophia']


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



