[0]:306 -- => a + b => 2 + 1 => 3
[1]:311 -- fib(4) => ?

[0]:306 -- => a + b => 1 + 0 => 1
[1]:305 -- b = fib(2) => ?
[2]:311 -- fib(4) => ?

[0]:300 -- => 0
[1]:305 -- b = fib(1) => ?
[2]:305 -- b = fib(2) => ?
[3]:311 -- fib(4) => ?

[0]:302 => 1
[1]:304 -- a = fib(1) => ?
[2]:305 -- b = fib(2) => ?
[3]:311 -- fib(4) => ?

[0]:306 -- => a + b => 1 + 1 => 2
[1]:304 -- a = fib(3) => ?
[2]:311 -- fib(4) => ?

[0]:302 => 1
[1]:305 -- b = fib(1) => ?
[2]:304 -- a = fib(3) => ?
[3]:311 -- fib(4) => ?

[0]:306 -- => a + b => 1 + 0 => 1
[1]:304 -- a = fib(2) => ?
[2]:304 -- a = fib(3) => ?
[3]:311 -- fib(4) => ?

[0]:300 -- => 0
[1]:305 -- b = fib(0) => ?
[2]:304 -- a = fib(2) => ?
[3]:304 -- a = fib(3) => ?
[4]:311 -- fib(4) => ?

[0]:302 -- => 1
[1]:304 -- a = fib(1) => ?
[2]:304 -- a = fib(2) => ?
[3]:304 -- a = fib(3) => ?
[4]:311 -- fib(4) => ?

recurse or return: copy stack up
show working - fib(4 - 1) => fib(3)
unique label same variable in different stacks
