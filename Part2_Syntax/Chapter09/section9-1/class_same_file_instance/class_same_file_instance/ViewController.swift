//
//  ViewController.swift
//  class_same_file_instance
//


import UIKit

// MyClass 클래스 정의
class MyClass {
    // 인스턴트 프로퍼티
    let msg = "헬로"
    // 인스턴트 메서드
    func hello() {
        print(msg)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MyClass 클래스의 인스턴트 myObj를 만든다
        let myObj = MyClass()
        // hello() 메서드를 실행한다
        myObj.hello()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

