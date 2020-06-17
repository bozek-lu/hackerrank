//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func minimumNumber(n: Int, password: String) -> Int {
    // Return the minimum number of characters to make the password strong
    let numbers = "0123456789"
    let lower_case = "abcdefghijklmnopqrstuvwxyz"
    let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let special_characters = "!@#$%^&*()-+"
    
    let enoughNumbers = password
        .filter { numbers.contains($0) }
        .count > 0
    let enoughLower = password
        .filter { lower_case.contains($0) }
        .count > 0
    let enoughUpper = password
        .filter { upper_case.contains($0) }
        .count > 0
    let enoughSpecial = password
        .filter { special_characters.contains($0) }
        .count > 0
    
    var missingCharacters = 0
    missingCharacters += enoughNumbers ? 0 : 1
    missingCharacters += enoughLower ? 0 : 1
    missingCharacters += enoughUpper ? 0 : 1
    missingCharacters += enoughSpecial ? 0 : 1
    
    if password.count < 6 {
        let missing = 6 - password.count
        return missing < missingCharacters ? missingCharacters : missing
    }
    
    return missingCharacters
}
