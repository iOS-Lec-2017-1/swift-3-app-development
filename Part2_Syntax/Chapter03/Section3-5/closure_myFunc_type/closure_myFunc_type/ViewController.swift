//
//  ViewController.swift
//  closure_myFunc_type
//
//  Created by yoshiyuki oshige on 2016/08/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 클로저 형을 선언한다
        let myFunc:(Int, Int) -> Int = {(a:Int, b:Int) -> Int in
            return a + b
        }
        
        // myFunc()를 시험
        let ans = myFunc(1, 2)
        print(ans)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

