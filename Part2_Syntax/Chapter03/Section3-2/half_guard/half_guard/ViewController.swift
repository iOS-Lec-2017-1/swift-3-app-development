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
        guard num>=10 else {
            // num이 10 이상이 아니면 함수를 종료한다
            return
        }
        // 값을 나눠 출력한다
        let halfNum = num/2
        print("\(num)의 반은 \(halfNum)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 반으로 나눈 값을 출력
        half(num: 25)
        half(num: 9)
        half(num: 12)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

