//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    let size = arr.count - 1
    var primary: [Int] = []
    var secondary: [Int] = []
    for (i, array) in arr.enumerated() {
        primary.append(array[i])
        secondary.append(array[size - i])
    }
    return abs(primary.reduce(0, +) - secondary.reduce(0, +))
}
