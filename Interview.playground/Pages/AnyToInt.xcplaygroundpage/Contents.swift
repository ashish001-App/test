//: [Previous](@previous)

import Foundation

var input: [Any] = ["Ashish", "Sisodia", 1, "dasdsa", 2, 3.3,true]

func anyToInt2(input: [Any]) -> [Int] {
    
    guard !input.isEmpty else { return [] }
    let result = input.compactMap{ $0 as? Int}
    
    return result.isEmpty ? [] : result
}

func anyToInt<Element: Equatable>(inputType: [Element].Type,input: [Any]) -> [Element] {
    
    guard !input.isEmpty else { return [] }
    let result = input.compactMap{ $0 as? Element}
    
    return result.isEmpty ? [] : result
}

print(anyToInt2(input: input))
print(anyToInt(inputType: [Int].self,input: input))
