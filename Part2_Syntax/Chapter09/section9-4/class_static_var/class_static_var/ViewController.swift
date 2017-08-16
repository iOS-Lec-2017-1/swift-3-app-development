//
//  ViewController.swift
//  class_static_var
//
//  Created by yoshiyuki oshige on 2016/08/19.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class Car {
    // 클래스 프로퍼티
    static var count = 0
    // 인스턴스 프로퍼티
    var moving = false
    
    // 인스턴스 메서드
    func start() {
        Car.count += 1
        moving = true
    }
    
    func stop() {
        if Car.count > 0 {
            Car.count -= 1
            moving = false
        }
    }
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 차를 만든다
        let car1 = Car()
        let car2 = Car()
        print("움직이는 차는 \(Car.count)대")
        car1.start()
        car2.start()
        print("움직이는 차는 \(Car.count)대")
        car2.stop()
        print("움직이는 차는 \(Car.count)대")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

