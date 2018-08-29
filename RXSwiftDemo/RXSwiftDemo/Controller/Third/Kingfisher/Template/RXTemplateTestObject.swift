//
//  RXTemplateTestObject.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/28.
//  Copyright © 2018 TAL. All rights reserved.
//

import Foundation

public class RXTemplateTestObject <T> {
    public let value: T
    public init(_ value: T) {
        self.value = value
    }
}
