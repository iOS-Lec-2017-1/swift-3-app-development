//
//  ViewController.swift
//  optional_default_array
//
//  Created by yoshiyuki oshige on 2016/08/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nameArray:[String] = []
        let userName:String = nameArray.first ?? "이름 없음"
        print(userName)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

