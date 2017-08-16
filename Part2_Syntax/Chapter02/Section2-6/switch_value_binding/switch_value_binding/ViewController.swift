//
//  ViewController.swift
//  switch_value_binding
//
//  Created by yoshiyuki oshige on 2016/07/25.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 튜플 밸류바인딩
        let size = (4, 10)
        switch size {
        case (0, 0):
            print("폭 높이 모두 0입니다")
        case (5...10, 5...10):
            print("규정 사이즈입니다")
        case (5...10, let height):
            print("높이\(height)이/가 규정 외입니다")
        case (let width, 5...10):
            print("폭\(width)이/가 규정 외입니다")
        default:
            print("폭 높이 모두 규정 외입니다")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

