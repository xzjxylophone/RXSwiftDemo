//
//  ViewController.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/24.
//  Copyright © 2018 TAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableView: UITableView = UITableView(frame: CGRect.zero, style: UITableViewStyle.plain)
    
    
    

    // MARK : View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let width = TAL_SCREEN_WIDTH
        let height = TAL_SCREEN_HEIGHT
        self.tableView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        
        self.view .addSubview(self.tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK : UITableViewDelegate
    
    
    // MARK : UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}

