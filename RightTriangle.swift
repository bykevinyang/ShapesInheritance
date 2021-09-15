import Foundation

//RightTriangle class
class RightTriangle: Shape {
    let leg1: Double
    let leg2: Double
    var hypotenuse: Double {return sqrt(leg1*leg1 + leg2*leg2)}
    override var description: String {
        return super.description + " leg1: \(leg1) leg2: \(leg2) hypotenuse: \(hypotenuse)"
    }
    
    init(leg1: Double, leg2: Double) {
        self.leg1 = leg1
        self.leg2 = leg2
        super.init()
        type = .RightTriangle
    }

    override func area() -> Double {return 0.5 * leg1 * leg2}
    override func perimeter() -> Double {return leg1 + leg2 + hypotenuse}
}

//IsoscelesRightTriangle class
class IsoscelesRightTriangle: RightTriangle {
    init(leg: Double) {
        super.init(leg1: leg, leg2: leg)
        type = .IsoscelesRightTriangle
    }
}