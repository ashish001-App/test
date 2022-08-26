//: [Previous](@previous)

import Foundation

let str = "Ashish Sisodia"

func filterCapitalChar(fromString input: String) -> String? {

    guard !input.isEmpty else { return nil }
    
    let result = input.filter({("A"..."Z").contains($0)})
    return result.isEmpty ? nil : result
}
 
print(filterCapitalChar(fromString: str))
