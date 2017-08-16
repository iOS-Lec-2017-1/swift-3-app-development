//
//  ViewController.swift
//  tuple_label_type
//
//  Created by yoshiyuki oshige on 2016/07/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 라벨과 형을 지정한 튜플
        
        var user:(name:String, age:Int, isPass:Bool)
        user.name = "민호"
        user.age = 23
        user.isPass = true
        print(user)
        print(user.age)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

