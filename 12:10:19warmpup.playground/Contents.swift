import UIKit

let xrds: [String: Any] = [
    // dictionary: [key:value]
    
    
    "name": "Crossroads School",
    "foundingYear" : 1971,
    
    "campuses" : [
"Norton", "21st Street"
    ]
]

let name0 = xrds["name"]
//type:

let name1 = xrds["name"] as! String
//type:

let name2 = xrds["name"] as? String
//type:


//1) types of name# : 0 -> an any (declared that when you began dictionary) (it's and any optional (Any?) because it doesn't know if it has a value) : 1 --> String (downcast as a String) : 2 --> String Optional


//2)change "name" --> [String]


//Unwrapping optional #1:
if name2 != nil {
    let unwrappedOptional = name2!
    print("hello \(unwrappedOptional)")
}

//Unwrapping optional #2:

let answer = name2 ?? "sometheing else"

print("Hello, again, \(answer)")

// #3
if let unwrapped = name2 {
    print("Hello another time, \(unwrapped)")
} else {
    print("well that was wring?")
}


let bruteForce = name2!
print("Hello for the final time, \(bruteForce)")
