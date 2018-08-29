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
    var valueImpByExtensionAndObject: String
    func test() {
        NSLog("test in object, value:%@", self.value)
        NSLog("test in object, valueImpByExtension:%@", self.valueImpByExtension)
        NSLog("test in object, valueImpByExtensionAndObject:%@", self.valueImpByExtensionAndObject)
    }
    func testImpByExtensionAndObject() {
        NSLog("test in testImpByExtensionAndObject, valueImpByExtensionAndObject:%@", self.valueImpByExtensionAndObject)
    }
    
    override init() {
        self.value = "abc"
        self.valueImpByExtensionAndObject = "abc object"
    }
}
