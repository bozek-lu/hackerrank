import UIKit

func alternatingCharacters(s: String) -> Int {
    let chars = s.compactMap { $0 }
    var count = 0
    for i in 0 ... chars.count - 2 {
        print("i: \(i)")
        if chars[i] == chars[i + 1] {
            count += 1
            print("same, update: \(count)")
        }
    }
    
    return count
}

alternatingCharacters(s: "AAABBB")
