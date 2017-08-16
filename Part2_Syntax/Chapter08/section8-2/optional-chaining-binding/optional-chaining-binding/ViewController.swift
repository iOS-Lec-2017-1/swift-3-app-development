//
//  ViewController.swift
//  optional-chaining-binding
//
//  Created by yoshiyuki oshige on 2016/10/14.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var balls:[(size:Int, color:String)] = []
        balls = [(size:2, color:"red"),(size:4, color:"green")]
        // 옵셔널 바인딩과 합한다
        if let ballSize = balls.first?.size {
            print(ballSize)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

