//Circle class
class Circle: Shape {
    let radius: Double
    override var description: String {
        return super.description + "radius: \(radius)"
    }
    
    init(_ radius: Double) {
        self.radius = radius
        super.init()
        type = .Circle
    }
    
    override func area() -> Double {return Double.pi * radius * radius}
    override func perimeter() -> Double {return 2 * Double.pi * radius}
    func circumference() -> Double {return perimeter()}
}