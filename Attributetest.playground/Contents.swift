import UIKit

var str = " Hello, playground"

let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
    .documentType: NSAttributedString.DocumentType.html,
    .characterEncoding: String.Encoding.utf8.rawValue
]

let data = str.data(using: .utf8)
var att = try! NSMutableAttributedString(data: data!, options: options, documentAttributes: nil)

print(str.count)
print(att.string.count)
