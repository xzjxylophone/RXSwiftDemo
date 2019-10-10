//
//  LCTwoSum.swift
//  RXSwiftDemo
//
//  Created by xuzhijun on 2019/10/9.
//  Copyright © 2019 TAL. All rights reserved.
//

import UIKit

class LCTwoSum: NSObject {
    static func test() -> Void {
//        let nums: [Int] = [2, 2, 3, 4, 2, 5, 15]
        let nums: [Int] = [3, 2, 5, 3]
        let target: Int = 6
        let result1: [Int] = LCTwoSum().o_N_N(nums, target)
        print("\(result1)")
        let result2: [Int] = LCTwoSum().o_N(nums, target)
        print("\(result2)")
        let result3: [Int] = LCTwoSum().twoSum(nums, target)
        print("\(result3)")
    }
    
    
    func o_N_N(_ nums: [Int], _ target: Int) -> [Int] {
        for (i, num) in nums.enumerated() {
            for j in (i + 1)..<(nums.count) {
                if num + nums[j] == target {
                    return [i, j]
                }
            }
        }
        fatalError("No valid outputs")
    }
    
    // 两遍hash
    func o_N(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, num) in nums.enumerated() {
            // 如果存在,那么就不添加了
            if !dict.keys.contains(num) {
                dict[num] = i
            }
        }
        for (i, num) in nums.enumerated() {
            if let nextIndex = dict[target - num] {
                // 同一个索引不能重复使用
                if nextIndex != i {
                    return [i, nextIndex]
                    // 或者: return [min(i, nextIndex), max(i, nextIndex)]
                }
            }
        }
        fatalError("No valid outputs")
    }
    
    // 一遍hash
    func o_N2(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            if !dict.keys.contains(num) {
                dict[num] = i
            }
        }
        fatalError("No valid outputs")
    }
    
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i];
            }
            dict[num] = i
        }
        fatalError("No valid outputs")
    }
}
