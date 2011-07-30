
List fill := method(times, value,
  for(i, 1, times, self push(value))
)

Matrix := Object clone
Matrix dim := method(x, y,
  self _list := List clone
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
m _list println
m get(4, 2) println
