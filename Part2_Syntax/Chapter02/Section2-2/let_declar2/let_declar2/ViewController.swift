//
//  ViewController.swift
//  let_declar2
//
//  Created by yoshiyuki oshige on 2016/07/21.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 다음의 상수 price는 결과를 사용하지 않으므로 경고가 나옵니다.
        
        let rate:Double
        let price:Double
        rate = 1.02
        price = 2500 * rate
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

