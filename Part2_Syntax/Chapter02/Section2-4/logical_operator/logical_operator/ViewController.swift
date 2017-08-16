//
//  ViewController.swift
//  logical_operator
//
//  Created by yoshiyuki oshige on 2016/07/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 논리연산자
        let a = true
        let b = false
        let and = a && b
        let or = a || b
        let not = !a
        
        print((and, or, not))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

