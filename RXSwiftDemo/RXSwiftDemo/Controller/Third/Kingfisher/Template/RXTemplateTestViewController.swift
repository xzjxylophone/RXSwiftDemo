//
//  RXTemplateTestViewController.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/28.
//  Copyright © 2018 TAL. All rights reserved.
//

import UIKit

class RXTemplateTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let obj1: RXTemplateTestObject = RXTemplateTestObject<Int>(1)
        let obj2: RXTemplateTestObject = RXTemplateTestObject<String>("abc")
        NSLog("obj1:%zd, obj2:%@", obj1.value, obj2.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
