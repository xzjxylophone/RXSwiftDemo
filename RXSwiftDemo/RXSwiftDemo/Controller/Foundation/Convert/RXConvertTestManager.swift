//
//  RXConvertTestManager.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2019/5/8.
//  Copyright © 2019 TAL. All rights reserved.
//

import UIKit

class RXConvertTestManager: NSObject {
    
    
    
    

    
    
    
    
    // MARK : Singleton
    static var sharedInstance : RXConvertTestManager {
        struct Static {
            static let instance : RXConvertTestManager = RXConvertTestManager()
        }
        return Static.instance
    }
}
