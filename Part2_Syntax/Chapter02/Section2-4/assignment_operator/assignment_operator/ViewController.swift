//
//  ViewController.swift
//  assignment_operator
//
//  Created by yoshiyuki oshige on 2016/07/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 대입연산자
        
        var a = 100
        let b = a
        a = a + 1
        print(a, b)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

