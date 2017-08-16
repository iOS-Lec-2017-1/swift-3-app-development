//
//  ViewController.swift
//  struct_init
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    struct Box {
        let width:Int
        let height:Int
        let size:String
        
        // 이니셜라이져
        init(width:Int, height:Int){
            self.width = width
            self.height = height
            //size를 설정
            if (width+height)<250 {
                size = "M"
            } else {
                size = "L"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 사이즈가 다른 상자를 만든다
        let box1 = Box(width: 120, height: 80)
        let box2 = Box(width: 150, height: 120)
        print(box1)
        print(box2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

