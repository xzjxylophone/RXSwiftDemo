//
//  RXTestProtocolObject.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/27.
//  Copyright © 2018 TAL. All rights reserved.
//

import UIKit

class RXTestProtocolObject: NSObject, RXTestProtocol {
    var value: String
    func test() {
        NSLog("%@:%@", "test in origin", self.value)
    }
    override init() {
        self.value = "abc"
    }
}
