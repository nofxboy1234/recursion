  [0]:306(a) -- => a + b => 1 + 0 => 1
[1]:311(a) -- fib(2) => ?

    [0]:300(a) -- ==> 0
  [1]:305(a) -- b = fib(2 - 2) => a = fib(0) => ?
[2]:311(a) -- fib(2) => ?

  [0]:305(a) -- b = fib(2 - 2) => a = fib(0) => ?
[1]:311(a) -- fib(2) => ?

    [0]:302(a) -- ==> 1
  [1]:304(a) -- a = fib(2 - 1) => a = fib(1) => ?
[2]:311(a) -- fib(2) => ?

  [0]:304(a) -- a = fib(2 - 1) => a = fib(1) => ?
[1]:311(a) -- fib(2) => ?

[0]:311(a) -- fib(2) => ?

recurse or return: copy stack up
show working - fib(4 - 1) => fib(3)
match indent level for same line numbers
