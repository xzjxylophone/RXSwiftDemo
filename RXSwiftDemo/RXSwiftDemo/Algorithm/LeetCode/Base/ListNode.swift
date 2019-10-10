//
//  ListNode.swift
//  RXSwiftDemo
//
//  Created by xuzhijun on 2019/10/9.
//  Copyright © 2019 TAL. All rights reserved.
//

import UIKit

public class ListNode: NSObject {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public override var description: String {
        var result: String = val.description
        var tmp: ListNode? = self.next
        while tmp != nil {
            result = result + tmp!.val.description
            tmp = tmp?.next
        }
        return result
    }
}
