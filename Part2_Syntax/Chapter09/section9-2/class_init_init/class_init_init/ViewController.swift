//
//  ViewController.swift
//  class_init_init
//
//  Created by yoshiyuki oshige on 2016/10/05.
//  Copyright © 2016年 yoshiyuki oshige. All rights reserved.
//

import UIKit

class MyClass {
    // 인스턴스 프로퍼티
    let msg:String
    let name:String?
    
    // 이니셜라이져1
    init (msg:String = "헬로") {
        self.msg = msg
        self.name = nil
    }
    // 이니셜라이져2
    init (msg:String = "헬로", name:String) {
        self.msg = msg
        self.name = name
    }
    
    // 인스턴스 메서드
    func hello(){
        var helloMsg:String
        if let user = name {
            // name이 nil이 아니면 연결한다
            helloMsg = user + "씨, " + msg
        } else {
            helloMsg = msg
        }
        print(helloMsg)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myObj1 = MyClass(msg: "안녕하세요")
        myObj1.hello()
        
        let myObj2 = MyClass(msg: "안녕하세요", name:"금자")
        myObj2.hello()
        
        let obj3 = MyClass()
        obj3.hello()
        
        let obj4 = MyClass(name:"영애")
        obj4.hello()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

