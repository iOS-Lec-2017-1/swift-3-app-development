//
//  ViewController.swift
//  class_init_convenience
//

import UIKit

class MyClass {
    // 인스턴스 프로퍼티
    let msg:String
    let name:String
    
    // 지정 이니셜라이져
    init (msg:String, name:String) {
        self.msg = msg
        self.name = name
    }
    // 컨비니언스 이니셜라이져
    convenience init (msg:String = "헬로") {
        self.init(msg:msg, name:"익명") // 지정 이니셜라이져를 호출한다
    }
    
    // 인스턴스 메서드
    func hello(){
        let helloMsg = name + "씨." + msg
        print(helloMsg)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MyClass 클래스의 인스턴스를 만든다
        let myObj1 = MyClass()
        let myObj2 = MyClass(msg: "안녕하세요")
        let myObj3 = MyClass(msg: "아！", name: "영애")
        // hello() 메서드를 실행한다
        myObj1.hello()
        myObj2.hello()
        myObj3.hello()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
