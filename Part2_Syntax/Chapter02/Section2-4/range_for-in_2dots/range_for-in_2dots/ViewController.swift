//
//  ViewController.swift
//  range_for-in_2dots
//
//  Created by yoshiyuki oshige on 2016/08/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 4회 반복한다
        for i in (1..<5){
            print("\(i)번째")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

