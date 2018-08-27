//
//  RXKingfisherTestViewController.swift
//  RXSwiftDemo
//
//  Created by Rush.D.Xzj on 2018/8/27.
//  Copyright © 2018 TAL. All rights reserved.
//

import UIKit
import Kingfisher

class RXKingfisherTestViewController: UIViewController {
//    let testUrl: String = "https://upload.jianshu.io/users/upload_avatars/2159680/6541de9d-a627-4df0-9cd9-fd68b8b02ac6.JPG?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"
    
    let testUrl: String = "http://b.hiphotos.baidu.com/image/h%3D300/sign=60c8d30476ec54e75eec1c1e89399bfd/314e251f95cad1c8e671a21d723e6709c83d51c5.jpg"
    
    let imageView: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Kingfisher"
        self.view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
        imageView.frame = CGRect(x: 64, y: 64, width: 100, height: 100)
//        imageView.backgroundColor = UIColor.red
        
        let url = URL(string: self.testUrl)
        imageView.kf.setImage(with: url)
        
        self.view.addSubview(imageView)
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
