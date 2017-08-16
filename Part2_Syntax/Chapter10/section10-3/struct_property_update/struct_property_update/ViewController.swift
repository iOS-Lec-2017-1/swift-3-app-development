//
//  ViewController.swift
//  struct_property_update
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 구조체 정의
    struct ColorBox {
        var width:Int
        var height:Int
        var color:String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 구조체를 만들어 변수에 넣는다
        var redbox = ColorBox(width: 100, height: 100, color: "red")
        print("폭 \(redbox.width), 높이 \(redbox.height), 색 \(redbox.color)")
        
        // 프로퍼티 값을 변경한다
        redbox.width = 90
        redbox.color = "blue"
        print("폭 \(redbox.width), 높이 \(redbox.height), 색 \(redbox.color)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

