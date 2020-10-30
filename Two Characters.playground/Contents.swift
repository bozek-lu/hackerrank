//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func permute(_ array: [String]) -> [String] {
    if array.count == 0 { return [] }
    var pairs = [String]()

    for i in 0 ..< (array.endIndex - 1) {
        for k in (i + 1) ..< (array.endIndex) {
            pairs.append("\(array[i])\(array[k])")
        }
    }
    return pairs
}

func alternate(s: String) -> Int {
    let strings = s.map { String($0) }
    let set: [String] = Array(Set(strings))
    guard set.count > 1 else {
        return 0
    }
    let possibleStrings = Set(permute(set).filter { $0.count == 2 })
    var resultStrings: [String] = []
    for pair in possibleStrings {
        let set = CharacterSet(charactersIn: pair)
        let stripped = s.components(separatedBy: set.inverted).joined()
        resultStrings.append(stripped)
    }
    
    resultStrings = resultStrings.filter {
        $0.range(of: "(.)\\1", options: .regularExpression) == nil
    }
    return resultStrings.map { $0.count }.max() ?? 0
}

