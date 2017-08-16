//
//  ViewController.swift
//  for-in_stride
//
//  Created by yoshiyuki oshige on 2016/09/22.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 10부터 30까지 3씩 증가하는 수치를 꺼낸다
        for num in stride(from: 10, to: 30, by: 3) {
            print(num, terminator: ",")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

