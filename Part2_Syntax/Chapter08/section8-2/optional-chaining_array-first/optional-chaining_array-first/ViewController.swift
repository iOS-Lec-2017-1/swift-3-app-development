//
//  ViewController.swift
//  optional-chaining_array-first
//
//  Created by yoshiyuki oshige on 2016/08/12.
//  Copycolor © 2016年 yoshiyuki oshige. All colors reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // alls이 빌 때
        var balls:[(size:Int, color:String)] = []
        var ballSize = balls.first?.size
        print(ballSize)

        // balls에 값이 있을 때
        balls = [(size:2, color:"red"),(size:4, color:"green")]
        ballSize = balls.first?.size
        print(ballSize)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

