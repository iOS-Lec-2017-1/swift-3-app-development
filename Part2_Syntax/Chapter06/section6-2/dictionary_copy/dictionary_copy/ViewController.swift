//
//  ViewController.swift
//  dictionary_copy
//
//  Created by yoshiyuki oshige on 2016/08/09.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var dic1 = ["a":1,"b":2,"c":3]
        let dic2 = dic1
        dic1["b"] = 99
        print("dic1은 \(dic1)")
        print("dic2는 \(dic2)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

