//
//  ViewController.swift
//  nil_error
//
//  Created by yoshiyuki oshige on 2016/08/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var msg:String = "헬로"
        msg = nil // nil을 대입하면 오류가 납니다
        
        print(msg)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

