//
//  ViewController.swift
//  class_same_file
//


import UIKit

// MyClass 클래스 정의
class MyClass {
    // 인스턴스 프로퍼티
    let msg = "헬로"
    // 인스턴스 메서드
    func hello() {
        print(msg)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

