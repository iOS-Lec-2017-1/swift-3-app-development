//
//  ViewController.swift
//  let_declar2_error
//
//  Created by yoshiyuki oshige on 2016/07/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 다음 상수 price는 결과를 사용하지 않으므로 경고가 나옵니다.
        
        let rate:Double
        let price:Double
        rate = 1.02
        price = 2500 * rate
        price = 1000 * rate // 상수를 변경하려고하면 오류가 나오는 줄
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

