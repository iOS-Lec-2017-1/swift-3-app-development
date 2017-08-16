//
//  ViewController.swift
//  struct_subscript
//
//  Created by yoshiyuki oshige on 2016/08/23.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Stock {
        var name:String
        var data:[String:Int] = [:]
        
        // 이니셜라이져
        init(name:String){
            self.name = name
        }
        
        // 서브 스크립트
        subscript(color:String, size:Double) -> Int {
            // 값 꺼내기
            get {
                let key = color + String(size)
                if let value = data[key] {
                    return value
                } else {
                    return 0
                }
            }
            
            // 값 설정
            set {
                let key = color + String(size)
                data[key] = newValue // 새로운 값을 설정한다
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 타이거 신발 재고를 만든다
        var shoes = Stock(name: "Tiger")
        shoes["green", 24.5] = 3
        shoes["green", 25.0] = 5
        
        // 재고를 갱신한다
        shoes["green", 24.5] -= 2
        shoes["green", 25.0] += 1
        shoes["red", 26.0] = 5
        
        // 재고를 확인한다
        print(shoes.name)
        print(shoes["green", 24.5])
        print(shoes["green", 25.0])
        print(shoes["red", 26.0])
        // 재고 데이터가 없는 것
        print(shoes["red", 25.5])
        print(shoes["white", 25.0])
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



