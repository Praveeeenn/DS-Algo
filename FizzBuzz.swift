import UIKit
//Fizz Buzz
let numbers = [1, 2, 3, 4, 5, 7, 8, 10, 11, 12, 32, 15, 23, 33, 14, 12, 18]

for num in numbers {
    if num%3 == 0 && num%5 == 0 {
        print("\(num) FizzBuzz")
    } else if num%5 == 0 {
        print("\(num) Buzz")
    }else if num%3 == 0 {
        print("\(num) Fizz")
    } else {
        print(num)
    }
}
