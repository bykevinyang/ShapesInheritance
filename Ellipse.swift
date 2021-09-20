import Foundation

class Ellipse: Shape {
  let minor: Double
  let major: Double
  override var description: String {
      return super.description + " major: \(major) minor: \(minor)"
  }
  init(minor: Double, major: Double) {
    self.minor = minor
    self.major = major
    super.init()
    type = .Ellipse    
  }  

  override func area() -> Double {
    return (Double.pi * minor * major)
  }  
 
  override func perimeter() -> Double {
    return Double.pi * ((3/2)*(minor + major) - sqrt(minor * major))
    // Aprox circumference of ellipse, inefficent to do an integral
  }

  func circumference() -> Double {
    return perimeter()
  }
  
}