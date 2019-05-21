//
//  RXJSONConvertManager.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2019/5/8.
//  Copyright © 2019 TAL. All rights reserved.
//

import UIKit

class RXJSONConvertManager: NSObject {

    
//    func jsonString2Array(jsonString:String) -> Array<Any> {
////        https://www.cnblogs.com/jukaiit/p/9345654.html
//        let jsonData:Data = jsonString.data(using: .utf8)!
//    }

    // MARK : Singleton
    static var sharedInstance : RXJSONConvertManager {
        struct Static {
            static let instance : RXJSONConvertManager = RXJSONConvertManager()
        }
        return Static.instance
    }
}
