//
//  LCLongestSubstringWithoutRepeatingCharacters.swift
//  RXSwiftDemo
//
//  Created by xuzhijun on 2019/10/10.
//  Copyright © 2019 TAL. All rights reserved.
//

import UIKit

//extension String {
//    subscript (bounds: CountableClosedRange<Int>) -> String {
//        let start = index(startIndex, offsetBy: bounds.lowerBound)
//        let end = index(startIndex, offsetBy: bounds.upperBound)
//        return String(self[start...end])
//    }
//
//    subscript (bounds: CountableRange<Int>) -> String {
//        let start = index(startIndex, offsetBy: bounds.lowerBound)
//        let end = index(startIndex, offsetBy: bounds.upperBound)
//        return String(self[start..<end])
//    }
//}

class LCLongestSubstringWithoutRepeatingCharacters: NSObject {
    static func test() -> Void {
        // 3
        let s1: String = "abcabcbb"
        let r1: Int = LCLongestSubstringWithoutRepeatingCharacters().o_N(s1)
        print("\(s1):\(r1)")
        
        // 1
        let s2: String = "bbbb"
        let r2: Int = LCLongestSubstringWithoutRepeatingCharacters().o_N(s2)
        print("\(s2):\(r2)")
        
        // 3
        let s3: String = "pwwkew"
        let r3: Int = LCLongestSubstringWithoutRepeatingCharacters().o_N(s3)
        print("\(s3):\(r3)")
    }
    // https://www.jianshu.com/p/1cd0e691ab7a
    func o_N(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        }
        var result: [Int] = [Int]()
        result.append(1)
        for i in 1..<s.count {
            autoreleasepool {
                let lastMax: Int = result[i - 1]
                let startIndex: Int = i - lastMax
                let index1: String.Index = s.index(s.startIndex, offsetBy: startIndex)
                let index2: String.Index = s.index(s.startIndex, offsetBy: i)
                let index3: String.Index = s.index(s.startIndex, offsetBy: i + 1)
                let lastString: String = String(s[index1..<index2])
                let curString: String = String(s[index2..<index3])
                var maxLen = 0
                if lastString.contains(curString) {
                    var index: Int = 0
                    for j in 0..<lastString.count {
                        var find: Bool = false
                        autoreleasepool {
                            let indexJ1: String.Index = lastString.index(lastString.startIndex, offsetBy: j)
                            let indexJ2: String.Index = lastString.index(lastString.startIndex, offsetBy: j + 1)
                            let lastTmpString: String = String(lastString[indexJ1..<indexJ2])
                            if lastTmpString.elementsEqual(curString) {
                                index = j
                                find = true
                            }
                        }
                        if find {
                            break
                        }
                    }
                    maxLen = lastMax - index
                } else {
                    maxLen = lastMax + 1
                }
                result.append(maxLen)
            }
        }
        var maxResult:Int = 0
        for i in 0..<result.count {
            let tmpMax = result[i]
            maxResult = max(tmpMax, maxResult)
        }
        return maxResult
    }
    
    
    func o_N_2(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        }
        var result: [Int] = [Int]()
        result.append(1)
        for i in 1..<s.count {
            autoreleasepool {
                let lastMax: Int = result[i - 1]
                let startIndex: Int = i - lastMax
                let index1: String.Index = s.index(s.startIndex, offsetBy: startIndex)
                let index2: String.Index = s.index(s.startIndex, offsetBy: i)
                let index3: String.Index = s.index(s.startIndex, offsetBy: i + 1)
                let lastString: String = String(s[index1..<index2])
                let curString: String = String(s[index2..<index3])
                var maxLen = 0
                if lastString.contains(curString) {
                    var index: Int = 0
                    for j in 0..<lastString.count {
                        var find: Bool = false
                        autoreleasepool {
                            let indexJ1: String.Index = lastString.index(lastString.startIndex, offsetBy: j)
                            let indexJ2: String.Index = lastString.index(lastString.startIndex, offsetBy: j + 1)
                            let lastTmpString: String = String(lastString[indexJ1..<indexJ2])
                            if lastTmpString.elementsEqual(curString) {
                                index = j
                                find = true
                            }
                        }
                        if find {
                            break
                        }
                    }
                    maxLen = lastMax - index
                } else {
                    maxLen = lastMax + 1
                }
                result.append(maxLen)
            }
            
        }
        var maxResult:Int = 0
        for i in 0..<result.count {
            let tmpMax = result[i]
            maxResult = max(tmpMax, maxResult)
        }
        return maxResult
    }
}
