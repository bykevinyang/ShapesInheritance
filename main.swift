//An example of using inheritance in Swift

//Test Code
var c = Circle(5)
print(c.area())
print(c)
var t1 = RightTriangle(leg1: 3, leg2: 4)
print(t1)
var t2 = IsoscelesRightTriangle(leg: 3)
print(t2)


//Create and print an array of shapes
var shapes = [Shape]()
shapes.append(c)
shapes.append(Circle(10))
shapes.append(t1)
shapes.append(RightTriangle(leg1: 5, leg2: 12))
shapes.append(t2)
shapes.append(IsoscelesRightTriangle(leg: 6))
shapes.append(Square(width: 2))
shapes.append(Rectangle(width: 2, length:2))
for s in shapes {
  print(s)
  print("\n")
}

