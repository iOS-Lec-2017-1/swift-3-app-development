//
//  ViewController.swift
//  class_readonly_property
//
//  Created by yoshiyuki oshige on 2016/08/17.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class Circle {
    // 반경
    var radius:Double = 1.0
    // 면적
    var area:Double {
        // 면적을 반환한다
        return radius * radius * M_PI
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 원을 만든다
        let myCircle = Circle()
        myCircle.radius = 10
        let extent = myCircle.area
        print(extent)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

