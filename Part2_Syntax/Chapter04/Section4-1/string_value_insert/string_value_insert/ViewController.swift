//
//  ViewController.swift
//  string_value_insert
//
//  Created by yoshiyuki oshige on 2016/08/03.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 문자열에 변수를 포함한다
        let entries = 24
        let staff = 3
        let str1 = "참가자 \(entries)명"
        let str2 = "스태프를 포함하면 \(entries + staff)입니다."
        print(str1)
        print(str2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

