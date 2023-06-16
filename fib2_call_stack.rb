  [0]:306 -- => two_before_num + one_before_num => 0 + 1 ==> 1
[1]:311 -- fib(2) => ?

    [0]:300 -- ==> 0
  [1]:305 -- two_before_num = fib(2 - 2) => one_before_num = fib(0) => ?
[2]:311 -- fib(2) => ?

  [0]:305 -- two_before_num = fib(2 - 2) => one_before_num = fib(0) => ?
[1]:311 -- fib(2) => ?

    [0]:302 -- ==> 1
  [1]:304 -- one_before_num = fib(2 - 1) => one_before_num = fib(1) => ?
[2]:311 -- fib(2) => ?

  [0]:304 -- one_before_num = fib(2 - 1) => one_before_num = fib(1) => ?
[1]:311 -- fib(2) => ?

[0]:311 -- fib(2) => ?

recurse or return: copy stack up
show working - fib(4 - 1) => fib(3)
match indent level for same line numbers

|num: 3
|two_before_num = fib(3 - 2)
--|num: 1
|two_before_num = 1
|one_before_num = fib(3 - 1)
--|num: 2
--|two_before_num = fib(2 - 2)
----|num: 0
--|two_before_num = 0
--|one_before_num = fib(2 - 1)
----|num: 1
--|one_before_num = 1
--|[0, 1]
|one_before_num = 1
|[1, 1]
2