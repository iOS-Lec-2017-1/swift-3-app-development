//
//  ViewController.swift
//  func_hello
//
//  Created by yoshiyuki oshige on 2016/07/27.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // hello() 정의
    func hello() {
        print("헬로")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hello()를 실행한다
        hello()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

