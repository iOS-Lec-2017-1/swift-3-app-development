//
//  ViewController.swift
//  assignment_operator3_if
//
//  Created by yoshiyuki oshige on 2016/07/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  a、b의 큰 값을 bigger로 사용
        let a = arc4random_uniform(100)// 0 ～ 99의 난수
        let b = arc4random_uniform(100)
        var bigger:UInt32
        if a>b {
            bigger = a
        } else {
            bigger = b
        }
        print("a 는\(a) b 는\(b) bigger 는\(bigger)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

