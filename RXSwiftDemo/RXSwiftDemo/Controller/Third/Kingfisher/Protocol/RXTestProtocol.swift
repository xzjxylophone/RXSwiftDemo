//
//  RXTestProtocol.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/27.你
//  Copyright © 2018 TAL. All rights reserved.
//

import Foundation


public protocol RXTestProtocol {
    var value: String { get }
    var valueImpByExtension: String { get }
    var valueImpByExtensionAndObject: String { get }
    func test()
    func testImpByExtension()
    func testImpByExtensionAndObject()
}

public extension RXTestProtocol {
    // 在protocol的extension中,函数需要有实现
    public func testInExtension() {
        NSLog("testInExtension, value:%@", self.value)
        NSLog("testInExtension, valueImpByExtension:%@", self.valueImpByExtension)
        NSLog("testInExtension, valueImpByExtensionAndObject:%@", self.valueImpByExtensionAndObject)
    }
    
    public var valueImpByExtension: String {
        return "valueImpByExtension"
    }
    public var valueImpByExtensionAndObject: String {
        return "valueImpByExtensionAndObject"
    }
    
    public func testImpByExtension() {
        NSLog("testImpByExtension:%@", self.valueImpByExtension)
    }
    public func testImpByExtensionAndObject() {
        NSLog("testImpByExtensionAndObject:%@", self.valueImpByExtensionAndObject)
    }
}

