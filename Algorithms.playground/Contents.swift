//: ## Algorithms
//:

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
