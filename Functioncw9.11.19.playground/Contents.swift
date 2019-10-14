import UIKit

var str = "Hello, playground"

//Task1
func square(number: Float) -> Float{
    let doubleNumber = number * number
return doubleNumber
}

print(square(number:  0.5))

//Task2

func five() -> Int{
return 5
    
}
print(five())

//Task 3
func fullName(first: String, last: String ) -> String{
    return "\(first) \(last)"
}
print (fullName(first: "Elena", last: "Fis"))

//Task 4

func shout (hello: String){
    print("\(hello)! ")
}

shout(hello: "sup dude")

//why is this not running????????!!!!!!!

//Task 5

func numberName (givenNum: Int, realNum: Int) -> String{
    if givenNum == (realNum){
        print("The Number Name For \(realNum) Is Two")
    } else {
        return "(Not The Right #")
    }
    return "2"
}
print(numberName(givenNum: 2, realNum: 2))

//could not figure out task 5


