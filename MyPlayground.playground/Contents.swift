import UIKit

let numbers: [Int] = [1,2,4,6,8,9,11,13,16,17,20]

func linearSearch(searchValue: Int, arr: [Int]) -> Bool {
    for num in arr {
        if num == searchValue {
            return true
        }
    }
    return false
}

func binarySearch(searchValue: Int, arr: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = arr.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = arr[middleIndex]
        
        print("middle value: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(arr[leftIndex]),\(arr[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearch(searchValue: 20, arr: numbers))

//print(linearSearch(searchValue: 21, arr: numbers))

