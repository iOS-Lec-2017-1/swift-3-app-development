//
//  ViewController.swift
//  optional_value_error
//
//  Created by yoshiyuki oshige on 2016/08/13.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let msg:String? = "헬로"
        let newMsg = msg + " 월드" // msg가 String가 아니면 오류가 발생한다
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

