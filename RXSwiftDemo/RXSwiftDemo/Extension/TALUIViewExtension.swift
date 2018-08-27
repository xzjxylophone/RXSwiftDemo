//
//  TALUIViewExtension.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/24.
//  Copyright © 2018 TAL. All rights reserved.
//

import UIKit

extension UIView {
    public var tal_x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    public var tal_y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
        }
    }
}



