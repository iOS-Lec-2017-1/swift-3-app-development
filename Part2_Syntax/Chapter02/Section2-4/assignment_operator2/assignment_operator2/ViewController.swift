//
//  ViewController.swift
//  assignment_operator2
//
//  Created by yoshiyuki oshige on 2016/07/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 복합대입연산자
        var a = 5
        let b = 10
        a *= b + 2
        print(a)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

