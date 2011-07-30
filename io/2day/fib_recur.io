
fib_recur := method(n, i, j,
  if(n == 0, return i+j, fib_recur(n-1, j, i+j))
)
fib := method(n,
  if(n == 0, return 0)
  if(n == 1, return 1)

  return fib_recur(n-2, 0, 1)
)

i := 0
while(i<11, fib(i) println; i=i+1)

