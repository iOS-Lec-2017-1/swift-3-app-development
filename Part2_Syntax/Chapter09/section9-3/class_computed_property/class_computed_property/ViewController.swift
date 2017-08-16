//
//  ViewController.swift
//  class_computed_property
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
        get{
            return radius * radius * M_PI
        }
        
        // 면적을 설정한다（반경을 설정한다）
        set (extent){
            radius = sqrt(extent / M_PI)
        }
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 원을 만든다
        let myCircle = Circle()
        // 초기값의 반경과 면적
        print("반경 \(myCircle.radius)")
        print("면적 \(myCircle.area)")
        
        // 면적을 2배로 한다
        myCircle.area *= 2
        print("반경 \(myCircle.radius)")
        print("면적 \(myCircle.area)")
        
        // 반경을 3.0으로 한다
        myCircle.radius = 3.0
        print("반경 \(myCircle.radius)")
        print("면적 \(myCircle.area)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

