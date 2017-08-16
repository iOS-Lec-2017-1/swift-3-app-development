//
//  ViewController.swift
//  computed_class_var
//
//  Created by yoshiyuki oshige on 2016/08/19.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class MyClass {
    // 클래스 프로퍼티
    static var radian:Double = 0.0
    
    // Computed 클래스 프로퍼티 degree
    class var degree:Double {
        // 값 꺼내기
        get {
            // radian을 디그리로 변환해서 반환한다
            let setpoint = radian * 90/M_PI
            return setpoint
        }
        
        // 값 설정
        set (setpoint){
            // 설정 값을 라디언으로 변환해서 radian에 설정한다
            radian = setpoint * M_PI/90
        }
    }
    
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 기울기를 18도로 설정
        MyClass.degree = 18
        let slope = MyClass.degree
        print("\(slope)도")
        
        // 기울기를 π/2로 설정
        MyClass.radian = M_PI_2
        let slope2 = MyClass.degree
        print("\(slope2)도")
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

