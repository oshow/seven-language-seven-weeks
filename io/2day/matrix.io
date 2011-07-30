
List fill := method(times, value,
  for(i, 1, times, self push(value))
)

Matrix := Object clone
Matrix dim := method(x, y,
  self _list := List clone
  self _x := x
  self _y := y
  for(i, 1, y, self _list push(list() fill(x, 0)))
)
Matrix set := method(x, y, value,
  self _list at(y) atPut(x, value)
)
Matrix get := method(x, y,
  self _list at(y) at(x)
)

m := Matrix clone
m dim(5, 3)
m set(4, 2, 99)
m set(0, 0, 1)
m set(1, 0, 2)
m set(2, 0, 3)
m set(3, 0, 4)
m set(4, 0, 5)
m _list println
m get(4, 2) println

# -----------------

Matrix transpose := method(
  new_m := Matrix clone
  new_m dim(self _y, self _x)
  for(i, 0, self _y-1,
    for(j, 0, self _x-1,
      new_m set(i, j, self get(j, i))
    )
  )
  return new_m
)

m transpose _list println
(m get(4, 2) == m transpose get(2, 4)) println

