//Circle class
class Circle: Ellipse {
    override var description: String {
        return super.description + " Radius: \(major)"
    }
    
    init(_ radius: Double) {
        super.init(minor: radius, major: radius)
        type = .Circle
    }
    
    override func area() -> Double {return Double.pi * major * major}
    override func perimeter() -> Double {return 2 * Double.pi * major}
    override func circumference() -> Double {return perimeter()}
}