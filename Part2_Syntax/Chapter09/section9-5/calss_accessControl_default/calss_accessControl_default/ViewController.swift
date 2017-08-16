//
//  ViewController.swift
//  calss_accessControl_default
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MyClass 클래스의 인스턴스 멤버에 접근할 수 있다
        let myObj = MyClass()
        myObj.msg = "안녕!"
        myObj.hello()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

