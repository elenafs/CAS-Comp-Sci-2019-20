import UIKit

let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json")!

let fileContents = try! Data(contentsOf: fileUrl)


func main() {
    let json = try? JSONSerialization.jsonObject(with:fileContents, options: [])
    let dictionary = json as! [String: Any]

    let name: String = dictionary["name"] as! String
    let age: Int = dictionary["age"] as! Int
    let hobbies: [String] = dictionary["hobbies"] as! [String]
    let pet: String = dictionary["pet"] as! String

    print("Hiiiiiii, my name is \(name). I am \(age) years old. Some of my hobbies are \(hobbies.joined(separator: ", ")). I have a pet \(pet)).")
}


main()
