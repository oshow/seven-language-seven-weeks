
fib := method(n,
  fib_list := list(0, 1)
  List last  := method(call target reverse at(0))
  List last2 := method(call target reverse at(1))

  while(fib_list size < n+1,
    fib_list push (fib_list last + fib_list last2)
  )
  fib_list at(n) println
)

i := 0
while(i<11, fib(i); i=i+1)

