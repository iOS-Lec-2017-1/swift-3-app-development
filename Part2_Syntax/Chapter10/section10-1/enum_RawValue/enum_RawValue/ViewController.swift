//
//  ViewController.swift
//  enum_RawValue
//
//  Created by yoshiyuki oshige on 2016/08/21.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    enum Direction:Int {
        case forward = 1
        case backword
        case right
        case left
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let way1 = Direction.forward
        let way2 = Direction.backword
        let way3 = Direction.right
        let way4 = Direction.left
        // enum 밸류에 설정되어 있는 Raw Value를 알아본다
        print(way1.rawValue)
        print(way2.rawValue)
        print(way3.rawValue)
        print(way4.rawValue)
        
        // Raw Value가 3인 Direction을 알아본다
        let way5 = Direction(rawValue: 3)
        if let way = way5 {
            print(way)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

