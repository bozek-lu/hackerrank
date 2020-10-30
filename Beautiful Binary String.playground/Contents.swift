import UIKit

func beautifulBinaryString(b: String) -> Int {
    var s = b
    var counter = 0
    
    while s.range(of: "010") != nil && counter < 100 {
        let r = s.range(of: "010")!
        var chars = s.compactMap { $0 }
        counter += 1
        let index = s.distance(from: s.startIndex, to: r.upperBound)
        let opposite: Character = chars[index - 1] == "0" ? "1" : "1"
        chars[index - 1] = opposite
        s = String(chars)
    }
    
    return counter
}

beautifulBinaryString(b: "0100101010")
