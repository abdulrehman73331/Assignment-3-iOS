import UIKit

                            //PART 1
// Challenge A

// 1 , 3 , 4 are valid statements

// Challenge B

func divideIfWhole(_ value: Int , by divisor: Int) -> Int? {
    var answer: Int = 0
    if value % divisor == 0 {
        answer = value / divisor
        return answer
    }
    else {
        return nil
    }
}

let answerVal = divideIfWhole(10, by: 2)

if let newanswerVal = answerVal {
    print("Yep it divides \(newanswerVal) times")
}
else {
    print("Not divisible :[")
}

                                            //   PART 2

// challenge C REFACTOR
var value = 0
value = answerVal ?? 0
print("It divides \(value) times")

// CHALLENGE D Nested Optionals
let number: Int??? = 10

// FORCE UNWRRAP
print(number!!!)

//OPTIONAL BINDING
if let newNum = number {
    if let newNum1 = newNum {
        if let newNum2 = newNum1{
        print(newNum2)
        }
    }
    }
else {
    print("number is null")
}

// Guard Binding

func printNumber(_ number: Int???) {
    
    guard let newNumber = number else {
        print("number is null")
        return
    }
    guard let newNumber1 = newNumber else {
        print("number is null")
        return
    }
    guard let newNumber2 = newNumber1 else {
        print("number is null")
        return
    }
    print(newNumber2)
}

printNumber(10)

