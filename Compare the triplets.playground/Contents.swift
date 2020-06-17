//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func compareTriplets(a: [[Int]], b: [Int]) -> Int {
    let size = a.count - 1
    var primary: [Int] = []
    var secondary: [Int] = []
    for (i, array) in a.enumerated() {
        primary.append(array[i])
        secondary.append(array[size - i])
    }
    return abs(primary.reduce(0, +) - secondary.reduce(0, +))
}
