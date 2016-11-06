//: ## Algorithms
//:
import Foundation

var str = "Begin the Algorithms"
//: Swap 2 numbers
//:

// with var

func swapTwoValues<T>( a: inout T, with b: inout T) {
    (a,b) = (b,a)
    
}

var a = "Value1", b = "Value2"
swapTwoValues(a: &a, with: &b)
[a, b]


// with let

func swapTwoMoreValues<T>(a: T, with b: T) -> (T, T) {
    return (b,a)
}
swapTwoMoreValues(a: "Value1", with: "Value2")


//: Simple Array Sum
//:

let numberList = [4,2,5,6,1,3]

func sumArray(numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

sumArray(numbers: numberList)


// num holds the input provided
let nums =  ["6", "1 2 3 4 10 12"]

let ax = nums[1].components(separatedBy: " ").map( { Int(String($0))! } )

sumArray(numbers: ax)

let largeNums = ["6", "1000000001 1000000002 1000000003 1000000004 1000000005"]

let ay = largeNums[1].components(separatedBy: " ").map( { Int(String($0))! } )
sumArray(numbers: ay)


//: Plus Minus Fraction
//:
//: Fraction of the elements are positive, negative, and zeroes, respectively

let numsForFraction =  ["6", "0 2 -3 -4 10 12"]

let plusNums = numsForFraction[1].components(separatedBy: " ").filter( { Float(String($0))! > 0 } )

let minusNums = numsForFraction[1].components(separatedBy: " ").filter( { Float(String($0))! < 0 } )

let zeroNums = numsForFraction[1].components(separatedBy: " ").filter( { Float(String($0))! == 0 } )

let count = Float(numsForFraction[0])!

NSString(format:"%.3f", Float(Float(plusNums.count) / count))
NSString(format:"%.3f", Float(Float(minusNums.count) / count))
NSString(format:"%.3f", Float(Float(zeroNums.count) / count))


//: [Next](@next)
