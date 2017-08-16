//
//  ViewController.swift
//  class_instanceMember
//

import UIKit

// MyClass 클래스 정의
class MyClass {
    // 인스턴스 프로퍼티
    var msg = "헬로"
    // 인스턴스 메서드
    func hello() {
        print(msg)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MyClass 클래스의 인스턴스 myObj를 만든다
        let myObj = MyClass()
        // hello() 메서드를 실행한다
        myObj.hello()
        // msg 프로퍼티 값을 변경한다
        myObj.msg = "안녕！잘 지냈어？"
        // hello() 메서드를 실행한다
        myObj.hello()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
