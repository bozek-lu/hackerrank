import UIKit

var str = "Hello, playground"

func isPowerOfTwo(_ n: Int) -> Bool {
    (n > 0) && (n & (n - 1) == 0)
}

func getResult(from numerator: Int, denominator:  Int) {
    var total = 1
    var perfect = 1
    var x = 3
    
    while (perfect * denominator > total * numerator) {
        if isPowerOfTwo(x) {
            perfect += 1
        }
        
        total += 1
        x += 1
    }
    print(total * (x - 1))
}

let n = Int(readLine()!)!
var ints: [(Int, Int)] = []

for _ in 1...n {
    let two = readLine()!.components(separatedBy: " ").map { Int($0)! }
    ints.append((two[0], two[1]))
}

for i in ints {
    getResult(from: 2, denominator: 3)
}
