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
    func test()
}

public extension RXTestProtocol {
    // 在protocol的extension中,函数需要有实现
    public func testInExtension() {
        NSLog("test in extension:%@", self.value)
    }
}

