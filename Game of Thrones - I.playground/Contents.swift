import UIKit


func gameOfThrones(s: String) -> String {
    let chars = s.map { $0 }
    var unevencount = 0
    let set = Set(chars)
    for i in set {
        if (chars.filter { $0 == i }).count % 2 == 0 {
            continue
        } else {
            unevencount += 1
        }
    }
    
    return unevencount > 1 ? "NO" : "YES"
}


gameOfThrones(s: "cdcdcdcdeeeef")
