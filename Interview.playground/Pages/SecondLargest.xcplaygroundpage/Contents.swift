//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

var inputArray = [50,6,7,80,790]


func getSecondLargest<Element: Comparable>(resultType: [Element].Type,input: [Element]) -> Element? {
 
//    guard !input.isEmpty else { return nil }
    guard input.count > 1 else { return nil }
    
    let sortArray = input.sorted() { $0 > $1 }
    print(sortArray)
    return sortArray[1]
}



// With Complexity O(n)

func getSecondLargest_2<Element: Comparable>(resultType: [Element].Type,input: [Element]) -> Element? {
 
    guard !input.isEmpty else { return nil }
    
    var largest: Element?
    var secondLarest: Element?
    
    for value in input {
        guard let lar = largest else {
            largest = value
            continue
        }
        
        guard let secLar = secondLarest else {
            if value > lar {
                secondLarest = lar
                largest = value
            }else {
                secondLarest = value
            }
            continue
        }
        
        
        if value > lar {
            largest = value
            secondLarest = lar
        }else if value > secLar {
            secondLarest = value
        }
        
    }
    
    return secondLarest
}

print(getSecondLargest(resultType: [Int].self, input: inputArray))
print(getSecondLargest_2(resultType: [Int].self, input: inputArray))


