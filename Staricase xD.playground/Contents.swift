//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func staircase(n: Int) -> Void {

    var spaces = n - 1
    var strings: [String] = []
    for i in 0 ... n - 1 {
        var string = ""
        for l in 0 ... spaces { if l > 0 { string += " " } }
        for _ in 0 ... i { string += "#" }
        strings.append(string)
        spaces -= 1
    }
    for str in strings {
        print(str)
    }
}
