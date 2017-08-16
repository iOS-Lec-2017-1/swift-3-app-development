//
//  ViewController.swift
//  half_guard
//
//  Created by yoshiyuki oshige on 2016/07/31.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func half(num:Double) {
        // 중단처리
        guard num >= 10 else {
            // num이 10이상이 아닐 때 함수에서 빠져나온다
            return
        }
        // 값을 절반으로 출력한다
        let halfNum = num/2
        print("\(num) 절반은 \(halfNum)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 절반 값을 출력한다
        half(num: 25)
        half(num: 9)
        half(num: 12)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

