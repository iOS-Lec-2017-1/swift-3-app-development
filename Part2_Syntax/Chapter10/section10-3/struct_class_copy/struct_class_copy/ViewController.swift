//
//  ViewController.swift
//  struct_class_copy
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

// 클래스
class BoxClass {
    var size:String = "M"
    var color:String = "red"
}

// 구조체
struct BoxStruct {
    var size:String = "M"
    var color:String = "red"
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 클래스의 경우
        let cBox1 = BoxClass()
        let cBox2 = cBox1
        cBox2.color = "green"
        
        // 구조체의 경우
        let sBox1 = BoxStruct()
        var sBox2 = sBox1
        sBox2.color = "green"
        
        // 값을 확인한다
        print("cBox1：\(cBox1.size)　\(cBox1.color)")
        print("cBox2：\(cBox2.size)　\(cBox2.color)")
        print("sBox1：\(sBox1.size)　\(sBox1.color)")
        print("sBox2：\(sBox2.size)　\(sBox2.color)")
    }
}


