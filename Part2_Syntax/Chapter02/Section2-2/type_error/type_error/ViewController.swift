//
//  ViewController.swift
//  type_error
//
//  Created by yoshiyuki oshige on 2016/07/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let quantity = 5
        let unitPrice = 2300
        let tax = 1.08
        let price = unitPrice * quantity * (1 + tax) // 이 식이 오류가 납니다
        // 값 출력
        print(price)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

