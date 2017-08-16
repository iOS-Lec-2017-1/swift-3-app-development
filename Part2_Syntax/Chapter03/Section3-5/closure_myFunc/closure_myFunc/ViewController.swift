//
//  ViewController.swift
//  closure_myFunc
//
//  Created by yoshiyuki oshige on 2016/08/01.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 클로저 변수 myFunc에 들어간다
        let myFunc = {(a:Int, b:Int) -> Int in
            return a + b
        }
        
        // myFunc()을 시험한다
        let ans = myFunc(1, 2)
        print(ans)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

