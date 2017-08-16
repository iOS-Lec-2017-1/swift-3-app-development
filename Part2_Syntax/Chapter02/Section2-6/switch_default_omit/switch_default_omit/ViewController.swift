//
//  ViewController.swift
//  switch_default_omit
//
//  Created by yoshiyuki oshige on 2016/07/26.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //default를 생략한 switch문
        let aPoint = (50, 100)
        switch aPoint {
        case (0, 0):
            print("중심접입니다")
        case (0, _):
            print("x축 위의 점입니다")
        case (_, 0):
            print("y축 위의 점입니다")
        case let(x, y):
            print(" 점(\(x),\(y)) 입니다")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

