import UIKit

func gemstones(arr: [String]) -> Int {
    let sets = arr.map { Set($0) }.compactMap { $0 }
    let first = sets.first!
    var counter = 0
    for i in first {
        var allContain = true
        sets.forEach {
            if !$0.contains(i) { allContain = false }
        }
        counter += allContain ? 1 : 0
    }
    
    return counter
}

gemstones(arr: ["abcdde", "baccd", "eeabg"])
