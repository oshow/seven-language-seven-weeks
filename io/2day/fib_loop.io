
fib := method(n,
  if(n == 0, return 0 println)
  if(n == 1, return 1 println)
  if(n == 2, return 1 println)

  fib_list := list(1, 1)
  List last  := method(call target reverse at(0))
  List last2 := method(call target reverse at(1))

  while(fib_list size < n,
    fib_list push (fib_list last + fib_list last2);
  )
  fib_list last println
)

i := 0
while(i<11, fib(i); i=i+1)

