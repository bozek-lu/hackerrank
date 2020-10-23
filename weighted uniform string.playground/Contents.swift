import UIKit

func weightedUniformStrings(s: String, queries: [Int]) -> [String] {
    let arrayOfWeights = s.map { Int($0.asciiValue ?? 0) - 96 }
    var contiguous: [Int] = []
    contiguous.append(arrayOfWeights.first!)
    var previous: Int?
    for i in arrayOfWeights {
        if previous == i {
            contiguous.append(contiguous[contiguous.count - 1] + i)
        } else {
            contiguous.append(i)
        }
        previous = i
    }
    return queries.map { contiguous.contains($0) ? "Yes" : "No" }
}

weightedUniformStrings(s:"abccddde", queries: [6,1,3,12,5,9,10])
