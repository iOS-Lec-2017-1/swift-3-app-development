//
//  ViewController.swift
//  struct_property
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 구조체를 정의한다
    struct ColorBox {
        var width:Int
        var height:Int
        var color:String
    }
    
    // 구조체를 정의한다（프로퍼티에 초기값이 있다）
    struct WhiteBox {
        var width:Int = 100
        var height:Int = 100
        let color:String = "white"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 구조체를 만든다
        let redBox = ColorBox(width:120, height:100, color:"red")
        let theBox = WhiteBox()
        
        print((redBox.width, redBox.height, redBox.color))
        print((theBox.width, theBox.height, theBox.color))
        
        // WhiteBox에 값을 지정한다
        let myBox = WhiteBox(width: 150, height: 200)
        print((myBox.width, myBox.height, myBox.color))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

