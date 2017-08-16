//
//  ViewController.swift
//  class_init
//
//  Created by yoshiyuki oshige on 2016/08/15.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class MyClass {
    // 인스턴스 프로퍼티
    let msg:String
    
    // 이니셜라이져
    init (msg:String = "헬로") {
        self.msg = msg
    }
    
    // 인스턴스 메서드
    func hello(){
        print(msg)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MyClass 클래스의 인스턴스 myObj를 만든다
        let myObj = MyClass(msg: "안녕하세요")
        // hello() 메서드를 실행한다
        myObj.hello()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
