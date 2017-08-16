//
//  ViewController.swift
//  class_classMethod
//
//  Created by 유세라 on 2017. 1. 23..
//  Copyright © 2017년 Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class Message {
        // 클래스 메서드
        class func hello() -> String {
            return "안녕하세요"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let msg = Message.hello()
        print(msg)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

