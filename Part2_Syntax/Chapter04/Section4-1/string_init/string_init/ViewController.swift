//
//  ViewController.swift
//  string_init
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 문자열을 만든다
        let hello = String("헬로") + String(2000 + 20)
        print(hello)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

