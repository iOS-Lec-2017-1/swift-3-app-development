//
//  ViewController.swift
//  for-in_array
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배열에서 값을 꺼내 합계를 구한다
        
        let numList = [3,2,6,5,8,7,9]
        var sum = 0
        for num in numList {
            sum += num
        }
        print(" 합계 \(sum)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

