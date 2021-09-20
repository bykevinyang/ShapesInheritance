//ShapeType enum
enum ShapeType {
    case Shape, Circle, RightTriangle, IsoscelesRightTriangle, Rectangle, Square, Ellipse
}

//Shape class (abstract class...no instances will be made)
class Shape: CustomStringConvertible {
    static var nextShapeID = 0
    var id: Int
    var type: ShapeType
    
    var description: String {
        return "\(type) id: \(id) area: \(area()) perimeter: \(perimeter())"
    }
    
    init() {
        id = Shape.nextShapeID
        Shape.nextShapeID += 1
        type = .Shape
    }
    
    func area() -> Double {fatalError("Shape is an abstract class")}
    func perimeter() -> Double {fatalError("Shape is an abstract class")}
}