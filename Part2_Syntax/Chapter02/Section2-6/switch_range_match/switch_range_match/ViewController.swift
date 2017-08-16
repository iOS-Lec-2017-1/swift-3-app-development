//
//  ViewController.swift
//  switch_range_match
//
//  Created by yoshiyuki oshige on 2016/07/25.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 20회 반복
        for _ in 1...20 {
            
            let num = arc4random_uniform(50) // 0 ～ 49의 난수
            print("\(num)", terminator: "")
            // num으로 배분한다
            switch num {
            case (10...15):
                print(":교환 ", terminator: "")
            case 20,(31...35),40:
                print(":재검사 ", terminator: "")
            default:
                print(":합격 ", terminator: "")
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

