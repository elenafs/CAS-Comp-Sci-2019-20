import UIKit

var str = "Hello, playground"

func classifyProduct(int1:Int, int2:Int) -> String {
   let int3 = int1 * int2
    if int3 < 0 {
        return ("Negative")
    }
    else if int3 >= 30 {
            return ("Big")
    }
    else if int3 == 0 {
            return ("Zero")
    }
    else if int3 <= 30 {
        return ("Small")
    }
    else{
        return (":(")
    }
}

print(classifyProduct(int1: 5, int2: 2))
