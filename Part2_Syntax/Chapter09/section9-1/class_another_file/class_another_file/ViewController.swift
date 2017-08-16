//
//  ViewController.swift
//  class_another_file
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MyClass 클래스의 인스턴스 myObj를 만든다
        let myObj = MyClass()
        // hello() 메서드를 실행한다
        myObj.hello()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

