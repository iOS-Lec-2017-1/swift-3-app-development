//
//  ViewController.swift
//  for-in_nesting
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for-in문을 중첩한다
        for i in 0...2 {
            for j in 0...2 {
                let point = (5 * i, 10 * j)
                print("\(i)-\(j)번째 \(point)")
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

