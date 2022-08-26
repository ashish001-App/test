import UIKit

let intArray : [Int] = [1,2,1,3,1,3,4,5,5,9,10]
let stringArray : [String] = ["A","B","A","B","C","F","F"]

func removeIntDuplicate(array: [Int]) -> [Int] {
    
    guard !array.isEmpty else { return [] }
    
    var temp = [Int]()
    array.forEach { element in
        if !temp.contains(element) {
            temp.append(element)
        }
    }
    return temp
}

func removeStringDuplicate(array: [String]) -> [String] {
    
    guard !array.isEmpty else { return [] }
    
    var temp = [String]()
    array.forEach { element in
        if !temp.contains(element) {
            temp.append(element)
        }
    }
    return temp
}

func removeDuplicateGenerics<T: Equatable>(resultType: [T].Type,array: [T]) -> [T] {
    
    guard !array.isEmpty else { return [] }
    
    var temp = [T]()
    array.forEach { element in
        if !temp.contains(element) {
            temp.append(element)
        }
    }
    return temp
}


//Best way woth Equatable Protocol for all types

extension Array where Element : Equatable {
    
    func removeDuplicate() -> [Element] {
        
        guard !self.isEmpty else { return [] }
        
        var temp = [Element]()
        self.forEach { element in
            if !temp.contains(element) {
                temp.append(element)
            }
        }
        return temp
        
    }
    
}

// This is only for Int types
extension Array where Element == Int {
    
    func removeIntDuplicate() -> [Element] {
        
        guard !self.isEmpty else { return [] }
        
        var temp = [Element]()
        self.forEach { element in
            if !temp.contains(element) {
                temp.append(element)
            }
        }
        return temp
        
    }
    
}

//print(removeIntDuplicate(array: intArray))
//print(removeStringDuplicate(array: stringArray))
//print(intArray.removeDuplicate())
//print(stringArray.removeDuplicate())
//print(stringArray.removeIntDuplicate()) // Error

print(removeDuplicateGenerics(resultType: [String].self, array: stringArray))
print(removeDuplicateGenerics(resultType: [Int].self, array: intArray))

