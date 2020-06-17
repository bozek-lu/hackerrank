//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */
    var temp = s
    let amPm = s.suffix(2)
    temp.removeLast(2)
    
    let firstPart = s.components(separatedBy: ":").first ?? ""
    var hours = firstPart
    temp.removeFirst(firstPart.count)
    
    if amPm == "AM" && hours == "12" {
        hours = "00"
    } else if amPm == "PM" && hours != "12" {
        var intHours = Int(hours) ?? 0
        intHours += 12
        hours = "\(intHours)"
    }
    
    return hours + temp
}
