import Foundation

class Rectangle: Shape {
  let width: Double
  let length: Double

  override var description: String {
      return super.description + " width: \(width) length: \(length)"
  }
  
  init (width: Double, length: Double) {
    self.width = width
    self.length = length
    super.init()
    type = .Rectangle
  }
  override func area() -> Double {
    return width * length
  }
  override func perimeter() -> Double {
    return (2.0 * width + 2.0 * length)
  }
}

class Square: Rectangle {
  override var description: String {
      return super.description + " width: \(width)"
  }

  init (width: Double) {
    super.init(width: width, length: width)
    type = .Square
  }
}