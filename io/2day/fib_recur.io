
fib := method(n,
  if(n == 0, return 0)
  if(n == 1, return 1)

  fib(n-2) + fib(n-1)
)

i := 0
while(i<11, fib(i) println; i=i+1)

