//
//  LCAddTwoNumbers.swift
//  RXSwiftDemo
//
//  Created by xuzhijun on 2019/10/9.
//  Copyright © 2019 TAL. All rights reserved.
//

import UIKit

class LCAddTwoNumbers: NSObject {
    
    static func test() -> Void {
        // 342 + 465 = 807
        let l1_1: ListNode = ListNode.init(2)
        let l1_2: ListNode = ListNode.init(4)
        let l1_3: ListNode = ListNode.init(3)
        l1_1.next = l1_2;
        l1_2.next = l1_3;
        
        
        let l2_1: ListNode = ListNode.init(5)
        let l2_2: ListNode = ListNode.init(6)
        let l2_3: ListNode = ListNode.init(4)
        l2_1.next = l2_2;
        l2_2.next = l2_3;
        
        let result: ListNode? = LCAddTwoNumbers().o_N_2(l1_1, l2_1)
        
        print("\(l1_1)")
        print("\(l2_1)")
        print("\(String(describing: result))")
        
    }
    
    func o_N(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        var p: ListNode? = l1;
        var q: ListNode? = l2;
        var tail: ListNode? = nil
        var result: ListNode? = nil
        var incream: Int = 0
        while p != nil && q != nil {
            let sum: Int = p!.val + q!.val + incream
            let remain: Int = sum % 10
            incream = sum / 10
            let tmp: ListNode = ListNode.init(remain)
            if result == nil {
                result = tmp
            } else {
                tail!.next = tmp
            }
            tail = tmp
            p = p!.next
            q = q!.next
        }
        // 剩余的
        var r: ListNode? = (p != nil) ? p : q
        while r != nil {
            let sum: Int = r!.val + incream
            let remain: Int = sum % 10
            incream = sum / 10
            let tmp: ListNode = ListNode.init(remain)
            tail!.next = tmp
            tail = tmp
            r = r!.next
        }
        // 最后有进位的时候
        if incream > 0 {
            let tmp: ListNode = ListNode.init(incream)
            tail!.next = tmp
        }
        return result
    }
    
    
    func o_N_2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        var p: ListNode? = l1;
        var q: ListNode? = l2;
        var tail: ListNode? = nil
        var result: ListNode? = nil
        var incream: Int = 0
        while p != nil || q != nil {
            let x: Int = p != nil ? p!.val : 0
            let y: Int = q != nil ? q!.val : 0
            let sum: Int = x + y + incream
            let remain: Int = sum % 10
            incream = sum / 10
            let tmp: ListNode = ListNode.init(remain)
            if result == nil {
                result = tmp
            } else {
                tail!.next = tmp
            }
            tail = tmp
            if p != nil {
                p = p!.next
            }
            if q != nil {
                q = q!.next
            }
        }
        // 最后有进位的时候
        if incream > 0 {
            let tmp: ListNode = ListNode.init(incream)
            tail!.next = tmp
        }
        return result
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {return l2}
        guard let l2 = l2 else {return l1}
        let outputNode = ListNode((l1.val + l2.val) % 10)
        if l1.val + l2.val > 9 {
            outputNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next), ListNode(1))
        } else {
            outputNode.next = addTwoNumbers(l1.next, l2.next)
        }
        return outputNode
    }
    
    
    
}
