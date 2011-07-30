
List myAverage := method(
  self foreach(i,
    if(i type != "Number",
      Exception raise("Found a non Number object in list"))
  )
  self sum / (self size)
)

list(1, 2, 3, 4, 5) myAverage println
list(10, 20) myAverage println
list(1, "a", 5) myAverage println
