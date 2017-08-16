//
//  ViewController.swift
//  struct_static_var
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    struct Ball {
        static let madein = "한국"
        static var material = "종이"
        var radius:Double = 10.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Ball.material = "나무"
        let ball1 = Ball(radius: 15)
        let ball2 = Ball()
        print(ball1.radius)
        print(ball2.radius)
        print(Ball.madein)
        print(Ball.material)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


