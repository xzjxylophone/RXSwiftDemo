//
//  RXATTestProtocol.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/27.
//  Copyright © 2018 TAL. All rights reserved.
//

import Foundation

public protocol RXATTestProtocol {
    associatedtype DataType
    var value1: DataType { get }
    var value2: DataType { get }
}
