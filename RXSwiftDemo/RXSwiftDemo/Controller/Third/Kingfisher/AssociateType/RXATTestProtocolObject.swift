//
//  RXATTestProtocolObject.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/27.
//  Copyright © 2018 TAL. All rights reserved.
//

import UIKit

class RXATTestProtocolObject: NSObject, RXATTestProtocol {
    // 输入value1的时候,自动代码提示为 RXATTestProtocolObject.DataType
    var value1: String
    // 在输入value2的时候,自动代码提示为 String
    var value2: String
    override init() {
        self.value1 = "abc"
        self.value2 = "aaaa"
    }
}



