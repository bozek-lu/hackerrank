import UIKit

func weightedUniformStrings(s: String, queries: [Int]) -> [String] {
    let arrayOfWeights = s.map { Int($0.asciiValue ?? 0) - 96 }
    
    var contiguous: [[Int]] = []
    
    var partialResults: [Int] = []
    for i in arrayOfWeights {
        if partialResults.isEmpty {
            partialResults.append(i)
        } else if partialResults.last == i {
            partialResults.append(i)
        } else {
            partialResults = [i]
        }
        contiguous.append(partialResults)
    }
    let summed = contiguous.flatMap { $0.reduce(0, +) }
    return queries.map { summed.contains($0) ? "Yes" : "No" }
}

weightedUniformStrings(s: "abccddde", queries: [6,1,3,12,5,9,10])
