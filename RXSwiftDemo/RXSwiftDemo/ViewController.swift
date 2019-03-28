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
    
    
    var itemArray: NSArray = NSMutableArray()

    // MARK : View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.resetData()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Main"
        let width = TAL_SCREEN_WIDTH
        let height = TAL_SCREEN_HEIGHT
        self.tableView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(type(of: UITableViewCell()), forCellReuseIdentifier: "aaaa")
        self.view.addSubview(self.tableView)
        self.autoGoToVC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK : UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.gotoVC(index: indexPath.row)
    }
    
    // MARK : UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "aaaa"
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as UITableViewCell
        NSLog("cell:%@", cell)
        let text: String = self.itemArray[indexPath.row] as! String
        cell.textLabel?.text = text
        return cell
    }
    
    // MARK : Private
    func resetData() {
        self.itemArray = ["RXKingfisherTest", "RXTestProtocol", "RXTemplateTest"]
        
        // 倒序
        self.itemArray = self.itemArray.reversed() as NSArray
    }
    func autoGoToVC() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.gotoVC(index: 0)
        }
    }
    func gotoVC(index: Int) {
        
        // swift通过字符串获取类
//        https://blog.csdn.net/u013976172/article/details/69383878
        let name = self.itemArray[index] as! String
        let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        let className = namespace + "." + name + "ViewController"
        let cls = NSClassFromString(className) as! UIViewController.Type
        
        let vc: UIViewController = cls.init()
//        NSLog("vc:%@", type(of: vc))
        self.navigationController?.pushViewController(vc, animated: true)
    }

}




























