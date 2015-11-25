//: ## Algorithms
//:
import Foundation

var str = "Begin the Algorithms"
//: Swap 2 numbers
//:

// with var

func swapTwoValues<T>(inout a: T, inout with b: T) {
    (a,b) = (b,a)
    
}

var a = "Value1", b = "Value2"
swapTwoValues(&a, with: &b)
[a, b]


// with let

func swapTwoMoreValues<T>(a: T, with b: T) -> (T, T) {
    return (b,a)
}
swapTwoMoreValues("Value1", with: "Value2")


//: Simple Array Sum
//:

let numberList = [4,2,5,6,1,3]

func sumArray(numbers: [Int]) -> Int {
    return numbers.reduce(0, combine: +)
}

sumArray(numberList)


// num holds the input provided
let nums =  ["6", "1 2 3 4 10 12"]

let ax = nums[1].componentsSeparatedByString(" ").map( { Int(String($0))! } )

sumArray(ax)

let largeNums = ["6", "1000000001 1000000002 1000000003 1000000004 1000000005"]

let ay = largeNums[1].componentsSeparatedByString(" ").map( { Int(String($0))! } )
sumArray(ay)


//: Time Conversion String
//: 
//: Convert string time to 24 hour clock

let dateString = "03:05:45PM"
let hourType = dateString.substringFromIndex(dateString.endIndex.predecessor().predecessor())
var hourString = dateString.substringToIndex(dateString.startIndex.successor().successor())

if var hour = Int(hourString) {
   hour
    if hourType == "PM" &&  hour < 12 {
        hourString = String(hour + 12)
    } else if hourType == "AM" && hour == 12 {
        hourString = "00"
    }
}

var newDateString = dateString.stringByReplacingOccurrencesOfString(hourType, withString: "")

newDateString.replaceRange(newDateString.startIndex..<newDateString.startIndex.advancedBy(2), with: hourString)


//: Plus Minus Fraction
//:
//: Fraction of the elements are positive, negative, and zeroes, respectively

let numsForFraction =  ["6", "0 2 -3 -4 10 12"]

let plusNums = numsForFraction[1].componentsSeparatedByString(" ").filter( { Float(String($0))! > 0 } )

let minusNums = numsForFraction[1].componentsSeparatedByString(" ").filter( { Float(String($0))! < 0 } )

let zeroNums = numsForFraction[1].componentsSeparatedByString(" ").filter( { Float(String($0))! == 0 } )

let count = Float(numsForFraction[0])!

NSString(format:"%.3f", Float(Float(plusNums.count) / count))
NSString(format:"%.3f", Float(Float(minusNums.count) / count))
NSString(format:"%.3f", Float(Float(zeroNums.count) / count))


