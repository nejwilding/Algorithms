//: [Previous](@previous)

//: ## Fizz Buzz
//:
import Foundation

var str = "Begin Fizz Buzz"

//: FizzBuzz Loop
//:

func fizzBuzzLoop() {
    
    for index in 1...20 {
        if (index % 3 == 0 &&  index % 5 == 0) {
            print("FizzBuzz")
        }
        else if index % 3 == 0 {
            print("Fizz")
        } else if index % 5 == 0 {
            print("Buzz")
        } else {
            print(index)
        }
    }
    
}

fizzBuzzLoop()

//: FizzBuzz Slightly More Functional
//:

func fizzBuzz(_ i: Int) -> String {
    let result = (i % 3, i % 5)
    switch result {
    case(0,0):
        return "FizzBuzz"
    case (0,_):
        return "Fizz"
    case (_,0):
        return "Buzz"
    default:
        return "\(i)"
        
    }
}

for i in 1...20 {
    print(fizzBuzz(i))
}


//: [Next](@next)
