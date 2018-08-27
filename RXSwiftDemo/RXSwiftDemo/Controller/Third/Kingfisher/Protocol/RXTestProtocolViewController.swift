//
//  RXTestProtocolViewController.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/27.
//  Copyright © 2018 TAL. All rights reserved.
//

import UIKit

class RXTestProtocolViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let obj = RXTestProtocolObject()
        obj.test()
        obj.testInExtension()
        self.view.backgroundColor = UIColor.white
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
