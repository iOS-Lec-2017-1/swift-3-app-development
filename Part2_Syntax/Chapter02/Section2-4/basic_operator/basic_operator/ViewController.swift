//
//  ViewController.swift
//  basic_operator
//
//  Created by yoshiyuki oshige on 2016/07/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 산술연산자
        let a = 1+3*2
        let b = 10/(4-2)
        // 나머지
        let c = 5%3
        let d = -11%4

        // 결과
        print((a,b,c,d))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

