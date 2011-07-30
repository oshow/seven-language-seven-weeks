
orig_div := Number getSlot("/")

Number / := method(i,
  if(i==0, 0, orig_div(i))
)

(15 / 3) println
(15 / 0) println
(6 / 2) println
(6 / 0) println
