//
//  ViewController.swift
//  optional-binding_for-in
//
//  Created by yoshiyuki oshige on 2016/08/11.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var sum = 0
        let dic:[String:Int?] = ["a":23, "b":nil, "c":10, "d":nil]
        
        // 값이 수치인 경우만 더한다
        for (_, value) in dic {
            if let num = value {
                sum += num
            }
        }
        print("수치의 합계는 \(sum)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

