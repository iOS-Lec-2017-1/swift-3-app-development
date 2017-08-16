//
//  ViewController.swift
//  assignment_operator3
//
//  Created by yoshiyuki oshige on 2016/07/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // a,b 중 큰 값을 bigger로 한다
        let a = arc4random_uniform(100)// 0 ~ 99의 난수
        let b = arc4random_uniform(100)
        let bigger = (a>b) ? a : b
        print("a는 \(a) b는 \(b) bigger는 \(bigger)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

