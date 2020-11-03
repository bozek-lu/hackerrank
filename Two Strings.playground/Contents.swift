import UIKit

func twoStrings(s1: String, s2: String) -> String {
    let set1 = Set(s1.map { $0 })
    let set2 = Set(s2.map { $0 })
    return set1.intersection(set2).isEmpty ? "NO" : "YES"
}
