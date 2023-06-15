  [0]:306 -- => a + b => 1 + 0 ==> 1
[1]:311 -- fib(2) => ?

    [0]:300 -- ==> 0
  [1]:305 -- b = fib(2 - 2) => a = fib(0) => ?
[2]:311 -- fib(2) => ?

  [0]:305 -- b = fib(2 - 2) => a = fib(0) => ?
[1]:311 -- fib(2) => ?

    [0]:302 -- ==> 1
  [1]:304 -- a = fib(2 - 1) => a = fib(1) => ?
[2]:311 -- fib(2) => ?

  [0]:304 -- a = fib(2 - 1) => a = fib(1) => ?
[1]:311 -- fib(2) => ?

[0]:311 -- fib(2) => ?

recurse or return: copy stack up
show working - fib(4 - 1) => fib(3)
match indent level for same line numbers
