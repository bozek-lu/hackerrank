import UIKit

var str = "Hello, playground"

func funnyString(s: String) -> String {
    let firstASCII: [Int32] = s.compactMap { Int32($0.asciiValue!) }
    let secondASCII: [Int32] = firstASCII.reversed()
    
    for i in 0 ... firstASCII.count - 2 {
        let diff1 = abs(firstASCII[i] - firstASCII[i + 1])
        let diff2 = abs(secondASCII[i] - secondASCII[i + 1])
        if diff1 != diff2 {
            return "Not Funny"
        }
    }
    return "Funny"
}
