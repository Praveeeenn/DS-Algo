import UIKit


func bubbleSort(_ arr: [Int]) {
    var array = arr
    for _ in 0...array.count {
        for i in 1...array.count-1 {
            if(array[i-1] > array[i]) {
                let largerValue = array[i-1]
                array[i-1] = array[i]
                array[i] = largerValue
            }
        }
    }
    print(array)
}


//Example Call
bubbleSort([2, 6, 2, 9, 1, 5, 10, 3])
