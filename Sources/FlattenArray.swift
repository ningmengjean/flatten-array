//Solution goes in Sources
import Foundation

func flattenArray<T>(_ input: [Any]) -> [T] {
    var result: [T] = []
    
    if let s = input as? [Any] {
        s.forEach() {
            if let e = $0 as? T {
                result.append(e)
            } else {
                if let s = $0 as? [Any] {
                    result.append(contentsOf: flattenArray(s))
                }
            }
        }
    }
    return result
}



