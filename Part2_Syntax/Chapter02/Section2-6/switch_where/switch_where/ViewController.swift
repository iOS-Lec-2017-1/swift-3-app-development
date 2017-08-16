//
//  ViewController.swift
//  switch_where
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 조건이 있는 분기
        let size = (45, 40, 100)
        switch size {
        case let (width, height, _) where (width >= 60)||(height >= 60):
            print("규정 외：폭 높이 어느 쪽이 60 이상")
        case let (_, _, weight) where (weight >= 80):
            print("규정 외：무게 80 이상")
        default:
            print("규정 사이즈 내")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

