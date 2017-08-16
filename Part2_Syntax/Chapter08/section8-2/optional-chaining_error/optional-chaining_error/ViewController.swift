//
//  ViewController.swift
//  optional-chaining_error
//
//  Created by yoshiyuki oshige on 2016/08/12.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // balls가 빌 때
        var balls:[(size:Int, color:String)] = []
        var ballSize = balls.first.size
        print(ballSize)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

